/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Antlr4

public enum SqlBuilderError: Error {
    case UnknownNodeError(msg: String)
    case NotImplemented(method: String)
    case Invalid(msg: String)
}

public extension SqlBuilderError {
}

public class MySqlBuilderContext {
    var currentScope = [Int]()
    var scopeIndex = 0
    public func addScope() {
        currentScope.append(scopeIndex)
        scopeIndex += 1
    }
    
    public func removeScope() {
        currentScope.removeLast()
    }
    
}

public class MySqlNodeBuilder {
    private init() {}
    private class FieldNameGenerator {
        private var value = 0
        func next() -> String {
            value += 1
            return "Field\(value)"
        }
    }

    private static let fieldNameGenerator = FieldNameGenerator()
    public static func build(sql: String) throws -> SqlSelectNode? {
        let inputStream = ANTLRInputStream(sql)
        let lexer = MySqlLexer(inputStream)
        let tokenStream = CommonTokenStream(lexer)
        let parser = try MySqlParser(tokenStream)
        let context = MySqlBuilderContext()
        let expressionContext = (try parser.sqlStatement()).dmlStatement()!.selectStatement()!
        if let selectNode = expressionContext.accept(SelectTreeVisitor(context)) {
            return selectNode
        }
        
        return nil
    }
    

    class BaseSelectTreeVisitor: ParseTreeVisitor<SqlNode> {
        var selectNode: SqlSelectNode
        var context: MySqlBuilderContext
        init(_ selectNode: SqlSelectNode, context: MySqlBuilderContext) {
            self.selectNode = selectNode
            self.context = context
        }
        
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                self.selectNode.unknownNodeError("BaseSelectTreeVisitor", node: childNode)
            }
            
            return nil
        }
        
        override func visitErrorNode(_ node: ErrorNode) -> SqlNode? {
            self.selectNode.sqlErrors.append(
                SqlBuilderError.UnknownNodeError(
                    msg: node.getText()))
            return nil
        }
    }

    class JoinSpecVisitor: BaseSelectTreeVisitor {
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if childNode is MySqlParser.LogicalExpressionContext {
                    return childNode.accept(LogicalExpressionVisitor(selectNode, context: self.context))
                } else if childNode is MySqlParser.PredicateExpressionContext {
                    return childNode.accept(PredicateExpTreeVisitor(selectNode, context: self.context))
                } else if !(childNode is TerminalNode) {
                    self.selectNode.unknownNodeError("JoinSpecVisitor", node: childNode)
                }
            }
            
            return nil
        }
    }

    class JoinVisitor: BaseSelectTreeVisitor {
        let leftTable: SqlTableNode
        let joinType: JoinType
        init(_ selectNode: SqlSelectNode, context: MySqlBuilderContext, leftTable: SqlTableNode,
             joinType: JoinType) {
            self.leftTable = leftTable
            self.joinType = joinType
            super.init(selectNode, context: context)
        }

        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            var lastTable: SqlTableNode?
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if childNode is MySqlParser.AtomTableItemContext {
                    lastTable = SqlTableNode(childNode.getText())
                    selectNode.tables.append(lastTable!)
                } else if childNode is MySqlParser.InnerJoinContext {
                    lastTable = childNode.accept(
                        JoinVisitor(selectNode,
                                    context: self.context,
                                    leftTable: lastTable!,
                                    joinType: .INNER)) as? SqlTableNode
                }else if  childNode is MySqlParser.JoinSpecContext {
                    let joinExp = childNode.accept(JoinSpecVisitor(selectNode, context: self.context))
                    selectNode.joins.append(
                        SqlJoinNode(self.joinType,
                                    left: self.leftTable,
                                    right: lastTable!,
                                    predicate: joinExp!))
                } else if !(childNode is TerminalNode) {
                    self.selectNode.unknownNodeError("InnerJoinVisitor", node: childNode)
                }
            }
            
            return lastTable
        }
    }

    class TableSourceVisitor: BaseSelectTreeVisitor {
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            var tableNode: SqlTableNode?
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if childNode is MySqlParser.AtomTableItemContext {
                    tableNode = SqlTableNode(childNode.getText())
                    selectNode.tables.append(tableNode!)
                } else if childNode is MySqlParser.InnerJoinContext {
                    tableNode = childNode.accept(
                        JoinVisitor(selectNode,
                                    context: self.context,
                                    leftTable: tableNode!,
                                    joinType: .INNER)) as? SqlTableNode
                }else if let outerJoinNode = childNode as? MySqlParser.OuterJoinContext {
                    let joinType: JoinType = outerJoinNode.LEFT() != nil ?
                        .LEFT : outerJoinNode.RIGHT() != nil ?
                        .RIGHT : .FULL
                    tableNode = childNode.accept(
                        JoinVisitor(selectNode,
                                    context: self.context,
                                    leftTable: tableNode!,
                                    joinType: joinType)) as? SqlTableNode
                } else {
                    self.selectNode.unknownNodeError("TableSourceVisitor", node: childNode)
                }
            }
            
            return tableNode
        }
    }

    class TablesTreeVisitor: BaseSelectTreeVisitor {
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if childNode is MySqlParser.TableSourceContext {
                    let _ = childNode.accept(TableSourceVisitor(selectNode, context: self.context))
//                    selectNode.tables.append(SqlTableNode(childNode.getText()))
                } else {
                    self.selectNode.unknownNodeError("TablesTreeVisitor", node: childNode)
                }
            }
            
            return nil
        }
    }

    class FullColumnNameExpressionAtomVisitor: BaseSelectTreeVisitor {
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if childNode is MySqlParser.FullColumnNameContext {
                    return childNode.accept(FullColumnNameVisitor(self.selectNode, context: self.context))
                } else {
                    self.selectNode.unknownNodeError("FullColumnNameExpressionAtomVisitor", node: childNode)
                }
            }
            
            return nil
        }
    }
    
    class FullColumnNameVisitor: BaseSelectTreeVisitor {
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            var uidName = ""
            var dottedIdName = ""
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if let uidContextNode = childNode as? MySqlParser.UidContext {
                    uidName = uidContextNode.getText()
                } else if childNode is MySqlParser.DottedIdContext {
                    dottedIdName = childNode.getText()
                    let index = dottedIdName.index(dottedIdName.startIndex, offsetBy: 1)
                    dottedIdName = String(dottedIdName[index...])
                } else {
                    self.selectNode.unknownNodeError("FullColumnNameVisitor", node: childNode)
                }
            }
            
            var node: SqlFieldNode
            if dottedIdName == "" {
                node = SqlFieldBasicNode(uidName)
            } else {
                node = SqlFieldBasicNode(dottedIdName, sourceName: uidName)
            }
            
            return node
        }
    }

    class AggregateWindowedFunctionVisitor: BaseSelectTreeVisitor {
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if childNode is MySqlParser.FunctionArgContext {
                    return childNode.accept(FieldTreeVisitor(selectNode, context: self.context))
                } else if !(childNode is TerminalNode) {
                    self.selectNode.unknownNodeError("AggregateWindowedFunctionVisitor", node: childNode)
                }
            }
            
            return nil
        }
    }

    class AggregateFunctionCallVisitor: BaseSelectTreeVisitor {
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if let aggNode =  childNode as? MySqlParser.AggregateWindowedFunctionContext {
                    let innerNode = childNode.accept(AggregateWindowedFunctionVisitor(selectNode, context: self.context))
                    if aggNode.SUM() != nil {
                        return SqlWindowFuncNode(
                            MySqlNodeBuilder.fieldNameGenerator.next(),
                            funcType: WindowFuncType(rawValue: aggNode.SUM()!.getText())!,
                            body: innerNode!)
                    } else if aggNode.AVG() != nil {
                        return SqlWindowFuncNode(
                            MySqlNodeBuilder.fieldNameGenerator.next(),
                            funcType: WindowFuncType(rawValue: aggNode.AVG()!.getText())!,
                            body: innerNode!)
                    } else if aggNode.MIN() != nil {
                        return SqlWindowFuncNode(
                            MySqlNodeBuilder.fieldNameGenerator.next(),
                            funcType: WindowFuncType(rawValue: aggNode.MIN()!.getText())!,
                            body: innerNode!)
                    } else if aggNode.MAX() != nil {
                        return SqlWindowFuncNode(
                            MySqlNodeBuilder.fieldNameGenerator.next(),
                            funcType: WindowFuncType(rawValue: aggNode.MAX()!.getText())!,
                            body: innerNode!)
                    } else if aggNode.STDDEV() != nil {
                        return SqlWindowFuncNode(
                            MySqlNodeBuilder.fieldNameGenerator.next(),
                            funcType: WindowFuncType(rawValue: aggNode.STDDEV()!.getText())!,
                            body: innerNode!)
                    }
                } else if !(childNode is TerminalNode) {
                    self.selectNode.unknownNodeError("AggregateFunctionCallVisitor", node: childNode)
                }
            }
            
            return nil
        }
    }
    
    class FieldTreeVisitor: BaseSelectTreeVisitor {
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if childNode is MySqlParser.PredicateExpressionContext {
                    let predNode = childNode.accept(PredicateExpTreeVisitor(selectNode, context: self.context))
                    if let nestedNode = predNode as? SqlNestedNode {
                        if let fieldNode = nestedNode.node as? SqlFieldBasicNode  {
                            return fieldNode
                        }
                    }
                    
                    return SqlFieldComplexNode(
                        MySqlNodeBuilder.fieldNameGenerator.next(), child: predNode!)
                } else if childNode is MySqlParser.FullColumnNameContext {
                    return childNode.accept(FullColumnNameVisitor(self.selectNode, context: self.context))
                } else if childNode is MySqlParser.AggregateFunctionCallContext {
                    return childNode.accept(AggregateFunctionCallVisitor(self.selectNode, context: self.context))
                } else {
                    self.selectNode.unknownNodeError("FieldTreeVisitor", node: childNode)
                }
            }
            
            return nil
        }
    }
    
    class ProjectionTreeVisitor: ParseTreeVisitor<[SqlFieldNode]> {
        var selectNode: SqlSelectNode
        var context: MySqlBuilderContext
        init(_ selectNode: SqlSelectNode, context: MySqlBuilderContext) {
            self.selectNode = selectNode
            self.context = context
        }
        
        override func visitChildren(_ node: RuleNode) -> [SqlFieldNode]? {
            var sqlNodes = [SqlFieldNode]()
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if let asNode = childNode as? MySqlParser.SelectExpressionElementContext {
                    let fieldNode = asNode.accept(FieldTreeVisitor(self.selectNode, context: self.context))
                    if asNode.AS() != nil {
                        (fieldNode as! SqlFieldNode).alias = asNode.uid()!.getText()
                    }

                    sqlNodes.append(fieldNode as! SqlFieldNode)
                } else if let asNode = childNode as? MySqlParser.SelectColumnElementContext {
                    let fieldNode = asNode.accept(FieldTreeVisitor(self.selectNode, context: self.context))
                    if asNode.AS() != nil {
                        (fieldNode as! SqlFieldNode).alias = asNode.uid()!.getText()
                    }
                        
                    sqlNodes.append(fieldNode as! SqlFieldNode)
                } else if let asNode = childNode as? MySqlParser.SelectFunctionElementContext {
                    let fieldNode = asNode.accept(FieldTreeVisitor(self.selectNode, context: self.context))
                    if asNode.AS() != nil {
                        (fieldNode as! SqlFieldNode).alias = asNode.uid()!.getText()
                    }
                        
                    sqlNodes.append(fieldNode as! SqlFieldNode)
                } else if !(childNode is TerminalNode) {
                    self.selectNode.unknownNodeError("ProjectionTreeVisitor", node: childNode)
                }
            }
            
            return sqlNodes
        }
    }

    class ConstantExpressionAtomVisitor: BaseSelectTreeVisitor {
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if childNode is MySqlParser.ConstantContext {
                    return SqlLiteralNode(childNode.getText())
                } else {
                    self.selectNode.unknownNodeError("ConstantExpressionAtomVisitor", node: childNode)
                }
            }
            
            return nil
        }
    }
    
    class ExpressionAtomPredicateTreeVisitor: BaseSelectTreeVisitor {
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if childNode is MySqlParser.FullColumnNameExpressionAtomContext {
                    return childNode.accept(FullColumnNameExpressionAtomVisitor(selectNode, context: self.context))
                } else if childNode is MySqlParser.ConstantExpressionAtomContext {
                    return childNode.accept(ConstantExpressionAtomVisitor(selectNode, context: self.context))
                } else if childNode is MySqlParser.NestedExpressionAtomContext {
                    return childNode.accept(NestedExpressionAtomVisitor(selectNode, context: self.context))
                } else if childNode is MySqlParser.MathExpressionAtomContext {
                    return childNode.accept(MathExpressionAtomVisitor(selectNode, context: self.context))
                } else {
                    self.selectNode.unknownNodeError("ExpressionAtomPredicateTreeVisitor", node: childNode)
                }
            }
            
            return nil
        }
    }

    class NestedExpressionAtomVisitor: BaseSelectTreeVisitor {
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            var nestedNode: SqlNode?
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if childNode is MySqlParser.LogicalExpressionContext {
                    nestedNode = childNode.accept(LogicalExpressionVisitor(selectNode, context: self.context))
                } else if childNode is MySqlParser.PredicateExpressionContext {
                    nestedNode = childNode.accept(PredicateExpTreeVisitor(selectNode, context: self.context))
                } else if !(childNode is TerminalNode) {
                    self.selectNode.unknownNodeError("NestedExpressionAtomVisitor", node: childNode)
                }
            }
            
            return SqlNestedNode(nestedNode!)
        }
    }

    class MathExpressionAtomVisitor: BaseSelectTreeVisitor {
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            var left: SqlNode?
            var resultNode: SqlNode?
            var op: Operator?
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if childNode is MySqlParser.FullColumnNameExpressionAtomContext {
                    resultNode = childNode.accept(FullColumnNameExpressionAtomVisitor(selectNode, context: self.context))
                } else if childNode is MySqlParser.ConstantExpressionAtomContext {
                    resultNode = childNode.accept(ConstantExpressionAtomVisitor(selectNode, context: self.context))
                } else if childNode is MySqlParser.NestedExpressionAtomContext {
                    resultNode = childNode.accept(NestedExpressionAtomVisitor(selectNode, context: self.context))
                } else if let opNode = childNode as? MySqlParser.MultOperatorContext {
                    if opNode.DIVIDE() != nil {
                        op = Operator.DIVIDE
                    } else if opNode.MODULE() != nil {
                        op = Operator.MODULE
                    } else {
                        op = Operator.MULTIPLY
                    }
                    
                    continue
                } else if let opNode = childNode as? MySqlParser.AddOperatorContext {
                    if opNode.PLUS() != nil {
                        op = Operator.ADD
                    } else {
                        op = Operator.SUBSTRACT
                    }
                    
                    continue
                } else {
                    self.selectNode.unknownNodeError("MathExpressionAtomVisitor", node: childNode)
                }

                if left == nil {
                    left = resultNode
                    resultNode = nil
                }
            }
            
            return SqlMathNode(op!, left: left!, right: resultNode!)
        }
    }
    
    class BinaryCompPredTreeVisitor: ParseTreeVisitor<SqlPredicateNode> {
        var selectNode: SqlSelectNode
        var context: MySqlBuilderContext
        init(_ selectNode: SqlSelectNode, context: MySqlBuilderContext) {
            self.selectNode = selectNode
            self.context = context
        }
        
        override func visitChildren(_ node: RuleNode) -> SqlPredicateNode? {
            var left: SqlNode? = nil
            var right: SqlNode? = nil
            var op: SqlNode? = nil
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if childNode is MySqlParser.ExpressionAtomPredicateContext {
                    if left == nil {
                        left = childNode.accept(ExpressionAtomPredicateTreeVisitor(selectNode, context: self.context))
                    } else {
                        right = childNode.accept(ExpressionAtomPredicateTreeVisitor(selectNode, context: self.context))
                    }
                } else if childNode is MySqlParser.ComparisonOperatorContext {
                    op = childNode.accept(ComparisonOperatorTreeVisitor(selectNode, context: self.context))
                } else {
                    self.selectNode.unknownNodeError("BinaryCompPredTreeVisitor", node: childNode)
                }
            }
            
            return SqlPredicateNode(op!, left: left!, right: right!)
        }
    }

    class ComparisonOperatorTreeVisitor: BaseSelectTreeVisitor {
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            var opStr = ""
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if childNode is TerminalNodeImpl {
                    opStr.append(childNode.getText())
                } else {
                    self.selectNode.unknownNodeError("ComparisonOperatorTreeVisitor", node: childNode)
                }
            }
            
            return SqlOperatorNode(opStr)
        }
    }
    
    class PredicateExpTreeVisitor: ParseTreeVisitor<SqlNode> {
        var selectNode: SqlSelectNode
        var context: MySqlBuilderContext
        init(_ selectNode: SqlSelectNode, context: MySqlBuilderContext) {
            self.selectNode = selectNode
            self.context = context
        }
        
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            var left: SqlNode? = nil
            var right: SqlNode? = nil
            var op: SqlNode? = nil
            var tempNode: SqlNode? = nil

            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if childNode is MySqlParser.BinaryComparisonPredicateContext {
                    tempNode = childNode.accept(BinaryCompPredTreeVisitor(selectNode, context: self.context))
                }else if childNode is MySqlParser.LogicalExpressionContext {
                    tempNode = childNode.accept(LogicalExpressionVisitor(selectNode, context: self.context))
                }else if childNode is MySqlParser.LogicalOperatorContext {
                    op = childNode.accept(LogicalOperatorVisitor(selectNode, context: self.context))
                }else if childNode is MySqlParser.PredicateExpressionContext {
                    tempNode = childNode.accept(PredicateExpTreeVisitor(selectNode, context: self.context))
                }else if childNode is MySqlParser.ExpressionAtomPredicateContext {
                    tempNode = childNode.accept(ExpressionAtomPredicateTreeVisitor(selectNode, context: self.context))
                }else {
                    self.selectNode.unknownNodeError("PredicateExpTreeVisitor", node: childNode)
                }
                
                if tempNode != nil {
                    if left == nil {
                        left = tempNode
                    } else if right == nil {
                        right = tempNode
                    } else {
                        self.selectNode.invalidError("PredicateExpTreeVisitor",
                                                     msg: "PredicateExpTreeVisitor: extra node found")
                    }
                    
                    tempNode = nil
                }
            }
            
            return op == nil ? left : SqlPredicateNode(op!, left: left!, right: right!)
        }
    }
    
    class LogicalOperatorVisitor: BaseSelectTreeVisitor {
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if childNode is TerminalNode {
                    return SqlLogicalOperatorNode(childNode.getText())
                } else {
                    self.selectNode.unknownNodeError("LogicalOperatorVisitor", node: childNode)
                }
            }
            
            return nil
        }
    }
    
    class LogicalExpressionVisitor: BaseSelectTreeVisitor {
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            var left: SqlNode? = nil
            var right: SqlNode? = nil
            var op: SqlNode? = nil

            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                var tempNode: SqlNode? = nil
                if childNode is MySqlParser.LogicalExpressionContext {
                    tempNode = childNode.accept(LogicalExpressionVisitor(selectNode, context: self.context))
                } else if childNode is MySqlParser.PredicateExpressionContext {
                    tempNode = childNode.accept(PredicateExpTreeVisitor(selectNode, context: self.context))
                } else if childNode is MySqlParser.LogicalOperatorContext {
                    op = childNode.accept(LogicalOperatorVisitor(selectNode, context: self.context))
                } else {
                    self.selectNode.unknownNodeError("LogicalExpressionVisitor", node: childNode)
                }
                
                if tempNode != nil {
                    if left == nil {
                        left = tempNode
                    } else {
                        right = tempNode
                    }
                }
            }
            
            return SqlPredicateNode(op!, left: left!, right: right!)
        }
    }
    
    class GroupByItemVisitor: BaseSelectTreeVisitor {
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if childNode is MySqlParser.PredicateExpressionContext {
                    return childNode.accept(PredicateExpTreeVisitor(selectNode, context: self.context))
                } else if !(childNode is TerminalNode) {
                    selectNode.unknownNodeError("GroupByItemVisitor", node: childNode)
                }
            }
            
            return nil
        }
    }
    
    class GroupByVisitor: BaseSelectTreeVisitor {
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            var fields = [SqlFieldNode]()
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if childNode is MySqlParser.GroupByItemContext {
                    if let fieldNode = childNode.accept(GroupByItemVisitor(selectNode, context: self.context))
                        as? SqlFieldNode {
                        fields.append(fieldNode)
                    } else {
                        selectNode.unknownNodeError("Node type is incorrect for GROUP BY: ", node: childNode)
                    }
                } else if !(childNode is TerminalNode) {
                    selectNode.unknownNodeError("GroupByVisitor", node: childNode)
                }
            }
            
            return SqlGroupByNode(fields)
        }
    }
    
    class FromTreeVisitor: BaseSelectTreeVisitor {
        override func visitChildren(_ node: RuleNode) -> SqlNode? {
            for index in 0..<node.getChildCount() {
                let childNode = node[index]
                if childNode is MySqlParser.TableSourcesContext {
                    let _ = childNode.accept(TablesTreeVisitor(selectNode, context: self.context))
                } else if childNode is MySqlParser.LogicalExpressionContext {
                    if selectNode.filter != nil {
                        self.selectNode.invalidError("FromTreeVisitor",
                                                     msg: "Select node filter has already been set")
                    }
                    let filterNode = childNode.accept(PredicateExpTreeVisitor(selectNode, context: self.context))
                    selectNode.filter = filterNode
                } else if childNode is MySqlParser.PredicateExpressionContext {
                    if selectNode.filter != nil {
                        self.selectNode.invalidError("FromTreeVisitor",
                                                     msg: "Select node filter has already been set")
                    }
                    let filterNode = childNode.accept(PredicateExpTreeVisitor(selectNode, context: self.context))
                    selectNode.filter = filterNode
                } else if !(childNode is TerminalNode){
                    self.selectNode.unknownNodeError("FromTreeVisitor", node: childNode)
                }
            }
            
            return nil
        }
    }
    
    class SelectTreeVisitor: ParseTreeVisitor<SqlSelectNode> {
        var context: MySqlBuilderContext
        init(_ context: MySqlBuilderContext) {
            self.context = context
        }

        override func visitChildren(_ node: RuleNode) -> SqlSelectNode? {
            if node is MySqlParser.QuerySpecificationContext {
                let query = node as! MySqlParser.QuerySpecificationContext
                let selectNode = SqlSelectNode.make()
                for index in 0..<query.getChildCount() {
                    let childNode = query[index]
                    if childNode is MySqlParser.FromClauseContext {
                        _ = childNode.accept(FromTreeVisitor(selectNode, context: self.context))
                    } else if childNode is MySqlParser.SelectElementsContext {
                        let nodes = childNode.accept(ProjectionTreeVisitor(selectNode, context: self.context))
                        selectNode.fields = nodes!
                    } else if childNode is MySqlParser.GroupByClauseContext {
                        let node = childNode.accept(GroupByVisitor(selectNode, context: self.context))
                        if let groupByNode = node as? SqlGroupByNode {
                            selectNode.groupBy = groupByNode
                        }
                    } else if !(childNode is TerminalNode){
                        selectNode.unknownNodeError("SelectTreeVisitor", node: childNode)
                    }
                }
                
                return selectNode
            } else {
                for index in 0..<node.getChildCount() {
                    if let value = node[index].accept(self) {
                        return value
                    }
                }
            }
            
            return nil
        }
    }
}

