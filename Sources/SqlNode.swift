/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Antlr4

public enum Predicate {
    case EQ, NEQ, GT, LT, GTE, LTE, AND, OR, UNKNOWN
}

public enum Operator {
    case ADD, SUBSTRACT, DIVIDE, MULTIPLY, MODULE, UNKNOWN
}

public enum SqlType: Int32 {
    case BOOLEAN, INT8, UINT8, INT16, UINT16, UINT32, INT32
    case INT64, UINT64, FLOAT, DOUBLE, VARCHAR, DATE
}

public enum JoinType {
    case INNER, LEFT, RIGHT, CROSS
}

public enum SqlNodeType: String {
    case SELECT, FROM, FILTER, TABLE, FIELD, PREDICATE, LITERAL
    case OPERATOR, LOGICALOPERATOR, NESTED, COMPUTEDFIELD, JOIN, WINDOWFUNC
    case GROUPBY, ORDERBY, SCALARFUNC, FUNCARGS, INVALID
}

public enum WindowFuncType: String {
    case SUM, AVG, MIN, MAX, STDDEV
}

public enum ScalarFuncType: String {
    case ABS, LENGTH, LOWER, POWER, DATE
}

public class SqlNode {
    public let type: SqlNodeType
    init(type: SqlNodeType) {
        self.type = type
    }

    class func make(_ sqlType: SqlNodeType) -> SqlNode {
        return SqlNode(type: sqlType)
    }

    static func make(_ sqlTypeName: String) -> SqlNode {
        return SqlNode(type: SqlNodeType(rawValue: sqlTypeName)!)
    }

    public func toString() -> String {
        return ""
    }

}

public class SqlJoinNode: SqlNode {
    public var left: SqlTableNode
    public var right: SqlTableNode
    public var predicate: SqlNode
    public var joinType: JoinType
    public init(_ joinType: JoinType, left: SqlTableNode, right: SqlTableNode, predicate: SqlNode) {
        self.left = left
        self.right = right
        self.joinType = joinType
        self.predicate = predicate
        super.init(type: .JOIN)
    }

    override public func toString() -> String {
        return "SqlJoinNode: \(self.joinType): \(self.left.toString())," +
            " \(self.right.toString()) (\(self.predicate.toString()))"
    }
}

public class SqlTableNode: SqlNode {
    public var name: String
    public init(_ name: String) {
        self.name = name
        super.init(type: .TABLE)
    }

    override public func toString() -> String {
        return "SqlTableNode: \(name)"
    }
}

public class SqlLogicalOperatorNode: SqlOperatorNode {
    override public init(_ op: String) {
        super.init(op)
        switch op.lowercased() {
        case "and": opType = .AND
        case "or": opType = .OR
        default: opType = .UNKNOWN
        }
    }

    override public func toString() -> String {
        return "SqlLogicalOperatorNode: \(op)"
    }
}

public class SqlOperatorNode: SqlNode {
    public var op: String
    public var opType: Predicate
    public init(_ op: String) {
        self.op = op
        switch op {
        case "=": opType = .EQ
        case "!=": opType = .NEQ
        case "<": opType = .LT
        case "<=": opType = .LTE
        case ">": opType = .GT
        case ">=": opType = .GTE
        default: opType = .UNKNOWN
        }
        super.init(type: .OPERATOR)
    }

    override public func toString() -> String {
        return "SqlOperatorNode: \(op)"
    }
}

public class SqlLiteralNode: SqlNode {
    public var value: String
    public init(_ value: String) {
        self.value = value
        super.init(type: .LITERAL)
    }

    override public func toString() -> String {
        return "SqlLiteralNode: \(value)"
    }
}

public class SqlFieldNode: SqlNode {
    public var name: String
    public var alias: String?
    public init(_ name: String, type: SqlNodeType) {
        self.name = name
        super.init(type: type)
    }

    override public func toString() -> String {
        return "SqlFieldNode: \(name)"
    }
}

public class SqlFieldBasicNode: SqlFieldNode {
    public var sourceName: String
    public var literalNode: SqlLiteralNode?
    public init(_ name: String, sourceName: String = "") {
        self.sourceName = sourceName
        super.init(name, type: .FIELD)
    }

    override public func toString() -> String {
        if sourceName.count > 0 {
            return "SqlFieldBasicNode: \(sourceName).\(name)"
        } else {
            return "SqlFieldBasicNode: \(name)"
        }
    }
}

public class SqlFieldStarNode: SqlFieldNode {
    public init() {
        super.init("*", type: .FIELD)
    }

    override public func toString() -> String {
        return "SqlFieldStarNode: *"
    }
}
public class SqlFieldComplexNode: SqlFieldNode {
    public var child: SqlNode
    public init(_ name: String, child: SqlNode) {
        self.child = child
        super.init(name, type: .COMPUTEDFIELD)
    }

    override public func toString() -> String {
        return "SqlFieldComplexNode: \(name): \(self.child.toString())"
    }
}

public class SqlFieldOrderBydNode: SqlNode {
    public let isAsc: Bool
    public let field: SqlFieldNode
    public init(_ field: SqlFieldNode, isAsc: Bool) {
        self.field = field
        self.isAsc = isAsc
        super.init(type: field.type)
    }

    override public func toString() -> String {
        return "SqlFieldOrderBydNode: \(self.field.name)"
    }
}

public class SqlFuncArgsFuncNode: SqlNode {
    public var args: [SqlNode]
    public init(args: [SqlNode]) {
        self.args = args
        super.init(type: .FUNCARGS)
    }

    override public func toString() -> String {
        return "SqlFuncArgsFuncNode: \(args.count)"
    }
}

public class SqlScalarFuncNode: SqlFieldNode {
    public var funcType: ScalarFuncType
    public var args: SqlFuncArgsFuncNode
    public init(_ name: String, fType: ScalarFuncType, args: SqlFuncArgsFuncNode) {
        self.funcType = fType
        self.args = args
        super.init(name, type: .SCALARFUNC)
    }

    override public func toString() -> String {
        return "SqlScalarFuncNode: \(funcType), \(args.toString())"
    }
}

public class SqlWindowFuncNode: SqlFieldNode {
    public var funcType: WindowFuncType
    public var body: SqlNode
    public init(_ name: String, funcType: WindowFuncType, body: SqlNode) {
        self.funcType = funcType
        self.body = body
        super.init(name, type: .WINDOWFUNC)
    }

    override public func toString() -> String {
        return "SqlWindowFuncNode: \(funcType), \(body.toString())"
    }
}

public class SqlNestedNode: SqlNode {
    public var node: SqlNode
    public init(_ node: SqlNode) {
        self.node = node
        super.init(type: .NESTED)
    }

    override public func toString() -> String {
        return "SqlNestedNode:  (\(node.toString())"
    }
}

public class SqlMathNode: SqlNode {
    public var op: Operator
    public var left: SqlNode
    public var right: SqlNode
    public init(_ op: Operator, left: SqlNode, right: SqlNode) {
        self.op = op
        self.left = left
        self.right = right
        super.init(type: .OPERATOR)
    }

    override public func toString() -> String {
        return "SqlMathNode:  \(left.toString())  \(op)  \(right.toString())"
    }
}

public class SqlPredicateNode: SqlNode {
    public var predicate: SqlNode
    public var left: SqlNode
    public var right: SqlNode
    public init(_ predicate: SqlNode, left: SqlNode, right: SqlNode) {
        self.predicate = predicate
        self.left = left
        self.right = right
        super.init(type: .PREDICATE)
    }

    override public func toString() -> String {
        return "SqlPredicateNode:  \(left.toString())  \(predicate.toString())  \(right.toString())"
    }
}

public class SqlGroupByNode: SqlNode {
    public var fields: [SqlFieldNode]
    public init(_ fields: [SqlFieldNode]) {
        self.fields = fields
        super.init(type: .GROUPBY)
    }
}

public class SqlOrderByNode: SqlNode {
    public var fields: [SqlFieldOrderBydNode]
    public init(_ fields: [SqlFieldOrderBydNode]) {
        self.fields = fields
        super.init(type: .ORDERBY)
    }
}

public class SqlSelectNode: SqlNode {
    public var tables: [SqlTableNode]
    public var fields: [SqlFieldNode]
    public var joins: [SqlJoinNode]
    public var filter: SqlNode?
    public var groupBy: SqlGroupByNode?
    public var orderBy: SqlOrderByNode?
    public var sqlErrors: [SqlBuilderError]
    public private(set) var errorMsg: String?

    private init() {
        self.tables = [SqlTableNode]()
        self.fields = [SqlFieldNode]()
        self.joins = [SqlJoinNode]()
        self.sqlErrors = [SqlBuilderError]()
        super.init(type: .SELECT)
    }

    static func make() -> SqlSelectNode {
        return SqlSelectNode()
    }

    func unknownNodeError(_ nodeName: String, node: ParseTree) {
        self.sqlErrors.append(
            SqlBuilderError.UnknownNodeError(
                msg: "\(nodeName): unknown type found: \(Swift.type(of: node)):\(node.getText())"))
    }

    func invalidError(_ nodeName: String, msg: String) {
        self.sqlErrors.append(
            SqlBuilderError.Invalid(msg: "\(nodeName): \(msg)"))
    }

    override public func toString() -> String {
        var output = "SqlSelectNode:\ntables:"
        for table in tables {
            output += "\(table.toString())\n"
        }
        output += "fields:\n"
        for field in fields {
            output += "\(field.toString())\n"
        }
        output += "joins:\n"
        for join in joins {
            output += "\(join.toString())\n"
        }

        if let ftr = filter {
            output += "filter:\n\(ftr.toString())"
        }

        return output
    }
}
