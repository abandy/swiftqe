/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Arrow

extension String: Error {}

public enum SqlError: Error {
    case invalid(String)
}

func loadType<T>( // swiftlint:disable:this cyclomatic_complexity
    _ from: SqlType,
    to: SqlType,
    data: Any) -> T? {
    switch from {
    case .INT8:
        return Relation.CastInteger<Int8>().funcs[to]!(data) as? T
    case .INT16:
        return Relation.CastInteger<Int16>().funcs[to]!(data) as? T
    case .INT32:
        return Relation.CastInteger<Int32>().funcs[to]!(data) as? T
    case .INT64:
        return Relation.CastInteger<Int64>().funcs[to]!(data) as? T
    case .UINT8:
        return Relation.CastInteger<UInt8>().funcs[to]!(data) as? T
    case .UINT16:
        return Relation.CastInteger<UInt16>().funcs[to]!(data) as? T
    case .UINT32:
        return Relation.CastInteger<UInt32>().funcs[to]!(data) as? T
    case .UINT64:
        return Relation.CastInteger<UInt64>().funcs[to]!(data) as? T
    case .DOUBLE:
        if to == .FLOAT {
            return Double(data as! Float) as? T
        }

        return Relation.CastFloat<Double>().funcs[to]!(data) as? T
    case .FLOAT:
        if to == .DOUBLE {
            return Float(data as! Double) as? T
        }

        return Relation.CastFloat<Float>().funcs[to]!(data) as? T
    default:
        return nil
    }
}

public class FieldOverride {
    var getValue: ((RowAccessor) -> Any?)?
}

public class QueryContext {
    var parameter = [Int: FieldOverride]()
    var columns = [ArrowArrayHolder]()
    var tables = [String: TableDef]()

    public func contains(_ field: FieldDef) -> Bool {
        if field.tableDef == nil {
            return false
        }

        if let table = tables[field.tableDef!.name] {
            if table.fieldMap[field.name] != nil {
                return true
            }
        }

        return false
    }

}

public class Relation { // swiftlint:disable:this type_body_length
    public class RelNode {
    }

    public class RelNodeWithType: RelNode {
        public var type: SqlType
        public init(_ type: SqlType) {
            self.type = type
        }

        public func getValue<T>(data: RowAccessor, context: QueryContext) -> T? {
            return nil
        }
    }

    public class FieldNode: RelNodeWithType {
        public var definition: FieldDef
        public var alias: String?
        public init(_ definition: FieldDef) {
            self.definition = definition
            super.init(definition.type)
        }

        override public func getValue<T>(data: RowAccessor, context: QueryContext) -> T? {return nil}
    }

    public class TableNode: RelNode {
        let tableDef: TableDef
        var name: String
        public init(_ tableDef: TableDef) {
            self.name = tableDef.name
            self.tableDef = tableDef
        }
    }

    public class FieldBasicNode: FieldNode {
        let basicField: FieldBasicDef
        public init(_ field: FieldBasicDef) {
            self.basicField = field
            super.init(field)
        }

        override public func getValue<T>(data: RowAccessor, context: QueryContext) -> T? {
            if let fieldFunc = context.parameter[self.definition.id] {
                if fieldFunc.getValue != nil {
                    return fieldFunc.getValue!(data) as! T?
                }
            }

            guard let basicField = self.definition as? FieldBasicDef else {
                return nil
            }

            if data[basicField.id] == nil {
                return nil
            }

            return data[basicField.id] as? T
        }
    }

    public class FieldComplexNode: FieldNode {
        public init(_ field: FieldComplexDef) {
            super.init(field)
        }

        override public func getValue<T>(data: RowAccessor, context: QueryContext) -> T? {
            return nil
        }
    }

    public class FieldWindowFuncNode: FieldNode {
        public init(_ field: FieldWindowFuncDef) {
            super.init(field)
        }

        override public func getValue<T>(data: RowAccessor, context: QueryContext) -> T? {
            return nil
        }
    }

    public class FieldScalarFuncNode: FieldNode {
        public init(_ field: FieldScalarFuncDef) {
            super.init(field)
        }

        override public func getValue<T>(data: RowAccessor, context: QueryContext) -> T? {
            let scalarDef = definition as! FieldScalarFuncDef
            var funcData = [Any?]()
            for calcFunc in scalarDef.calcFuncs {
                funcData.append(calcFunc(data))
            }

            return scalarDef.scalarFunc.getValue(funcData) as? T
        }
    }

    class CastInteger<T: BinaryInteger> {
        let funcs: [SqlType: ((Any) -> T)] = [
            .INT8: {data in T(data as! Int8)},
            .INT16: {data in T(data as! Int16)},
            .INT32: {data in T(data as! Int32)},
            .INT64: {data in T(data as! Int64)},
            .UINT8: {data in T(data as! UInt8)},
            .UINT16: {data in T(data as! UInt16)},
            .UINT32: {data in T(data as! UInt32)},
            .UINT64: {data in T(data as! UInt64)},
            .FLOAT: {data in T(data as! Float)},
            .DOUBLE: {data in T(data as! Double)}
        ]
    }

    class CastFloat<T: FloatingPoint> {
        let funcs: [SqlType: ((Any) -> T)] = [
            .INT8: {data in T(data as! Int8)},
            .INT16: {data in T(data as! Int16)},
            .INT32: {data in T(data as! Int32)},
            .INT64: {data in T(data as! Int64)},
            .UINT8: {data in T(data as! UInt8)},
            .UINT16: {data in T(data as! UInt16)},
            .UINT32: {data in T(data as! UInt32)},
            .UINT64: {data in T(data as! UInt64)}
        ]
    }

    public class CastNumberNode: RelNodeWithType {
        var node: RelNodeWithType
        public init(_ node: RelNodeWithType, sqlType: SqlType) {
            self.node = node
            super.init(sqlType)
        }

        public func setNode(_ node: RelNodeWithType) {
            self.node = node
        }

        override public func getValue<T>(
            data: RowAccessor, context: QueryContext
        ) -> T? {
            let output: Any? = node.getValue(data: data, context: context)
            if output == nil || self.type == node.type {
                return output as? T
            }
            return loadType(self.type, to: node.type, data: output!)
        }
    }

    public class LiteralNode: RelNodeWithType {
        public var literal: Any
        let digitsCharacters = CharacterSet(charactersIn: "0123456789")

        public init(_ literal: Any, sqlType: SqlType) {
            self.literal = literal
            super.init(sqlType)
        }

        public init(_ literal: String) {
            var sqlType: SqlType = .VARCHAR
            if literal.lowercased() == "true" || literal.lowercased() == "false" {
                sqlType = .BOOLEAN
                self.literal = Bool(literal)!
            } else if Int32(literal) != nil {
                sqlType = .INT32
                self.literal = Int32(literal)!
            } else if Int64(literal) != nil {
                sqlType = .INT64
                self.literal = Int64(literal)!
            } else if Double(literal) != nil {
                sqlType = .DOUBLE
                self.literal = Double(literal)!
            } else {
                if literal.count > 2 && (literal.starts(with: "'") || literal.starts(with: "'")) {
                    let start = literal.index(literal.startIndex, offsetBy: 1)
                    let end = literal.index(literal.endIndex, offsetBy: -1)
                    let range = start..<end
                    self.literal = String(literal[range])
                } else {
                    self.literal = literal
                }
            }

            super.init(sqlType)
        }

        override public func getValue<T>(data: RowAccessor, context: QueryContext) -> T? {
            if type == .INT32 {
                if T.self == Int8.self {
                    return Int8(literal as! Int32) as? T
                } else if T.self == Int16.self {
                    return Int16(literal as! Int32) as? T
                } else if T.self == Int64.self {
                    return Int64(literal as! Int32) as? T
                } else if T.self == UInt8.self {
                    return UInt8(literal as! Int32) as? T
                } else if T.self == UInt16.self {
                    return UInt16(literal as! Int32) as? T
                } else if T.self == UInt32.self {
                    return UInt32(literal as! Int32) as? T
                } else if T.self == UInt64.self {
                    return UInt64(literal as! Int32) as? T
                } else if T.self == Double.self {
                    return Double(literal as! Int32) as? T
                } else if T.self == Float.self {
                    return Float(literal as! Int32) as? T
                }
            }

            return (literal as! T)
        }
    }

    public class JoinNode: RelNode {
        public let joinType: JoinType
        public let left: TableDef
        public let right: TableDef
        public let predicate: RelNodeWithType

        public init(_ joinType: JoinType, left: TableDef, right: TableDef, predicate: RelNodeWithType) {
            self.joinType = joinType
            self.left = left
            self.right = right
            self.predicate = predicate
        }
    }

    public class NestedPredNode: PredicateNode {
        let child: PredicateNode
        public init(node: PredicateNode) {
            self.child = node
            super.init(Predicate.UNKNOWN, children: [node])
        }
    }

    public class NestedTypeNode: RelNodeWithType {
        public var child: RelNodeWithType
        public init(_ sqlType: SqlType, node: RelNodeWithType) {
            self.child = node
            super.init(sqlType)
        }
    }

    public class OperatorNode: RelNodeWithType {
        public var op: Operator
        public var children: [RelNode]
        public init(_ op: Operator, children: [RelNode]) {
            self.op = op
            self.children = children
            let lNode = children[0] as! RelNodeWithType
            var type = lNode.type
            if self.children.count == 2 {
                let rNode = self.children[1] as! RelNodeWithType
                if type != .BOOLEAN || type != .VARCHAR {
                    if type.rawValue > rNode.type.rawValue {
                        self.children[1] = CastNumberNode(rNode, sqlType: type)
                    } else {
                        type = rNode.type
                        self.children[0] = CastNumberNode(lNode, sqlType: type)
                    }
                } else {
                    print("Error: math node children have different types")
                }
            }

            super.init(type)
        }

        private func isWider(_ left: SqlType, right: SqlType) -> Bool {
            return left.rawValue > right.rawValue
        }
    }

    public class PredicateNode: RelNodeWithType {
        public var op: Predicate
        public var logicaOp: Bool
        public var children: [RelNode]
        var sqlType: SqlType?
        public init(_ op: Predicate, children: [RelNode]) {
            self.op = op
            self.children = children
            switch self.op {
            case .AND, .OR:
                self.logicaOp = true
            default:
                self.logicaOp = false
            }

            super.init(.BOOLEAN)
        }
    }

    public class GroupByNode: RelNode {
        public var fields: [FieldNode]
        public init(_ fields: [FieldNode]) {
            self.fields = fields
            super.init()
        }
    }

    public class OrderByNode: RelNode {
        public var fields: [FieldNode]
        public init(_ fields: [FieldNode]) {
            self.fields = fields
            super.init()
        }
    }

    public class SelectNode: RelNode {
        public var fields = [FieldNode]()
        public var joins = [JoinNode]()
        public var tables = [TableNode]()
        public var predicate: PredicateNode?
        public var groupBy: GroupByNode?
        public let schema: Schema
        public let context = QueryContext()
        public var tablePredicates = [String: PredicateNode]()
        private var windowFieldCnt = 0

        init(_ sqlSelect: SqlSelectNode,
             schema: Schema) throws {
            self.schema = schema
            super.init()
            try self.buildTables(sqlSelect)
            try self.buildJoins(sqlSelect)
            try self.buildFields(sqlSelect)
            try self.buildGroupBy(sqlSelect)
            if sqlSelect.filter != nil {
                predicate = (try convert(sqlSelect.filter!) as! PredicateNode)
            }
        }

        func buildTables(_ sqlSelect: SqlSelectNode) throws {
            for sqlTable in sqlSelect.tables {
                if !schema.tables.keys.contains(sqlTable.name) {
                    throw SqlError.invalid("Table not found: \(sqlTable.name)")
                }

                let table = schema.tables[sqlTable.name]!
                self.tables.append(TableNode(table))
                self.context.tables[table.name] = table
            }
        }

        func buildJoins(_ sqlSelect: SqlSelectNode) throws {
            for join in sqlSelect.joins {
                switch join.joinType {
                case .INNER, .LEFT, .RIGHT:
                    self.joins.append(
                        JoinNode(join.joinType,
                                 left: schema.tables[join.left.name]!,
                                 right: schema.tables[join.right.name]!,
                                 predicate: try convert(join.predicate) as! RelNodeWithType))
                default:
                    throw SqlError.invalid("Join type is currently not supported: \(join.joinType)")
                }
            }
        }

        func buildFields(_ sqlSelect: SqlSelectNode) throws {
            for sqlField in sqlSelect.fields {
                if let aggField = sqlField as? SqlScalarFuncNode {
                    let childNode = try convert(aggField)
                    fields.append(childNode as! FieldScalarFuncNode)
                } else if let aggField = sqlField as? SqlWindowFuncNode {
                    self.windowFieldCnt += 1
                    let childNode = try convert(aggField)
                    fields.append(childNode as! FieldWindowFuncNode)
                } else if let complexField = sqlField as? SqlFieldComplexNode {
                    let childNode = try convert(complexField)
                    fields.append(childNode as! FieldComplexNode)
                } else if sqlField is SqlFieldStarNode {
                    fields.append(contentsOf: buildStarField())
                } else if let basicNode = try buildBasicField(sqlField) {
                    fields.append(basicNode)
                }
            }
        }

        func buildGroupBy(_ sqlSelect: SqlSelectNode) throws {
            if let sqlGroupByNode = sqlSelect.groupBy {
                var fieldLookup = [String: FieldNode]()
                var groupByFields = [FieldNode]()
                for field in fields where field is Relation.FieldBasicNode {
                    fieldLookup[field.definition.name] = field
                }

                for sqlField in sqlGroupByNode.fields {
                    if let fieldNode = fieldLookup[sqlField.name] {
                        fieldLookup.removeValue(forKey: sqlField.name)
                        groupByFields.append(fieldNode)
                    } else if let basicNode = try buildBasicField(sqlField) {
                        groupByFields.append(basicNode)
                    } else {
                        throw SqlError.invalid("GroupBy field \(sqlField.name) not found.")
                    }
                }

                if fieldLookup.count != 0 {
                    throw SqlError.invalid("Field(s) found that are not Aggregate or in Group By.")
                }

                groupBy = GroupByNode(groupByFields)
            } else if windowFieldCnt > 0 && windowFieldCnt != fields.count {
                throw SqlError.invalid("Aggregate functions can currently only be used with each other.")
            }
        }

        private func buildBasicField(_ sqlField: SqlFieldNode?) throws -> FieldNode? {
            if let basicField = sqlField as? SqlFieldBasicNode {
                guard let field = schema.findField(basicField.name, tableName: basicField.sourceName) else {
                    throw SqlError.invalid("Field not found with name: \(basicField.sourceName).\(basicField.name)")
                }

                if !self.context.contains(field) {
                    throw SqlError.invalid("Field not found in query: \(basicField.sourceName).\(basicField.name)")
                }

                let basicNode = FieldBasicNode(field as! FieldBasicDef)
                basicNode.alias = basicField.alias
                return basicNode
            }

            return nil
        }

        private func buildStarField() -> [FieldNode] {
            var fieldNodes = [FieldNode]()
            for table in self.tables {
                for fieldDef in table.tableDef.fields {
                    fieldNodes.append(FieldBasicNode(fieldDef as! FieldBasicDef))
                }
            }
            return fieldNodes
        }

        private func convert( // swiftlint:disable:this cyclomatic_complexity function_body_length
            _ sql: SqlNode) throws -> RelNode? {
            switch sql.type {
            case .SCALARFUNC:
                let node = sql as! SqlScalarFuncNode
                let funcArgNode = node.args
                var argNodes = [RelNodeWithType]()
                var argNodeTypes = [SqlType]()
                for argNode in funcArgNode.args {
                    let aNode = try convert(argNode) as! RelNodeWithType
                    argNodes.append(aNode)
                    argNodeTypes.append(aNode.type)
                }

                let scalarFunc = FieldScalarFuncDef.getAggFunc(node.funcType, inputTypes: argNodeTypes)
                if scalarFunc == nil {
                    throw EngineError.generic(
                        "Function not found for func: \(node.funcType) with type(s): \(argNodeTypes)")
                }

                let field = FieldScalarFuncDef(node.name,
                                               scalarFunc: scalarFunc!,
                                               args: argNodes)
                let scalarNode = FieldScalarFuncNode(field)
                scalarNode.alias = node.alias
                return scalarNode
            case .WINDOWFUNC:
                let node = sql as! SqlWindowFuncNode
                let childNode = try convert(node.body)
                let outputType = (childNode as! RelNodeWithType).type
                let winFunc = FieldWindowFuncDef.getAggFunc(node.funcType, sqlType: outputType)
                if winFunc == nil {
                    throw EngineError.generic(
                        "Function not found for func: \(node.funcType) with type: \(outputType)")
                }

                let field = FieldWindowFuncDef(node.name,
                                               winFunc: winFunc!,
                                               expression: (childNode as! RelNodeWithType))
                let windowNode = FieldWindowFuncNode(field)
                windowNode.alias = node.alias
                return windowNode
            case .LITERAL:
                let literal = (sql as! SqlLiteralNode)
                return LiteralNode(literal.value)
            case .FIELD:
                let field: FieldDef? = nil
                if let basicField = sql as? SqlFieldBasicNode {
                    guard let field = schema.findField(basicField.name, tableName: basicField.sourceName) else {
                        throw SqlError.invalid(
                            "Field not found with name:  \(basicField.sourceName).\(basicField.name)")
                    }

                    if !self.context.contains(field) {
                        throw SqlError.invalid(
                            "Field not found in query: \(basicField.sourceName).\(basicField.name)")
                    }

                    let basicNode = FieldBasicNode(field as! FieldBasicDef)
                    basicNode.alias = basicField.alias
                    return basicNode
                } else if let complexField = sql as? SqlFieldComplexNode {
                    let childNode = try convert(complexField.child)
                    let complexNode = FieldComplexNode(
                        FieldComplexDef(complexField.name,
                                        expression: childNode as! RelNodeWithType))
                    complexNode.alias = complexField.alias
                    return complexNode
                }

                return FieldNode(field!)
            case .OPERATOR:
                let mathNode = (sql as! SqlMathNode)
                return OperatorNode(mathNode.op,
                                children: [try convert(mathNode.left)!,
                                           try convert(mathNode.right)!])
            case .COMPUTEDFIELD:
                let node = (sql as! SqlFieldComplexNode)
                let childNode = try convert(node.child)
                let field = FieldComplexDef(node.name,
                                            expression: (childNode as! RelNodeWithType))
                let complexNode = FieldComplexNode(field)
                complexNode.alias = node.alias
                return complexNode
            case .NESTED:
                let nested = (sql as! SqlNestedNode)
                if let nestedChild = try convert(nested.node) {
                    let nestedTypeChild = nestedChild as! RelNodeWithType
                    if let predChild = nestedTypeChild as? PredicateNode {
                        return NestedPredNode(node: predChild)
                    }

                    return NestedTypeNode((nestedChild as! RelNodeWithType).type, node: nestedTypeChild)
                }

                throw SqlError.invalid("Error wrapping nested child: \(nested.toString())")
            case .PREDICATE:
                let predicateNode = (sql as! SqlPredicateNode)
                var predicate = Predicate.UNKNOWN
                if let predNode = predicateNode.predicate as? SqlLogicalOperatorNode {
                    predicate = predNode.opType
                }
                if let predNode = predicateNode.predicate as? SqlOperatorNode {
                    predicate = predNode.opType
                }

                let leftNode = try convert(predicateNode.left)!
                let rightNode = try convert(predicateNode.right)!
                let predNode = PredicateNode(predicate, children: [leftNode, rightNode])
                if predicateNode.predicate is SqlOperatorNode {
                    if leftNode is FieldBasicNode && rightNode is LiteralNode {
                        let leftFieldNode = leftNode as! FieldBasicNode
                        if let tableName = leftFieldNode.definition.tableDef?.name {
                            if tablePredicates[tableName] == nil {
                                tablePredicates[tableName] = predNode
                            } else {
                                tablePredicates[tableName] =
                                PredicateNode(.OR, children: [predNode, tablePredicates[tableName]!])
                            }
                        }
                    } else if leftNode is LiteralNode && rightNode is FieldBasicNode {
                        let fieldNode = rightNode as! FieldBasicNode
                        if let tableName = fieldNode.definition.tableDef?.name {
                            if tablePredicates[tableName] == nil {
                                tablePredicates[tableName] = predNode
                            } else {
                                tablePredicates[tableName] =
                                PredicateNode(.OR, children: [predNode, tablePredicates[tableName]!])
                            }
                        }
                    }
                }

                return predNode
            default:
                return nil
            }
        }
    }

    public static func convertQuery(_ query: SqlNode, schema: Schema) throws -> RelNode? {
        switch query.type {
        case SqlNodeType.SELECT:
            return try SelectNode(query as! SqlSelectNode, schema: schema)
        default:
            return nil
        }
    }
}
// swiftlint:disable:this file_length
