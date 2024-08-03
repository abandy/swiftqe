/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation

public protocol PredicateComparor {
    func build(
        lRelNode: Relation.RelNodeWithType,
        rRelNode: Relation.RelNodeWithType,
        predicate: Predicate,
        context: QueryContext) -> ((RowAccessor) -> Bool)
}

public class PredicateBuilderHelper<T> {
    public static func checkNode(_ node: Relation.RelNodeWithType,
                                 context: QueryContext) -> Relation.RelNodeWithType {
        if let calcNode = PredicateBuilderHelper<T>.checkBuildCaclField(node, context: context) {
            return calcNode
        }

        PredicateBuilderHelper<T>.buildScalarFunc(node, context: context)
        return node
    }

    public static func checkBuildCaclField(
        _ node: Relation.RelNodeWithType,
        context: QueryContext
    ) -> Relation.RelNodeWithType? {
        let checkNode = node
        if let castNode = node as? Relation.CastNumberNode {
            let calcNode = checkBuildCaclField(castNode.node, context: context)
            if calcNode != nil {
                castNode.setNode(calcNode!)
            }

            return nil
        }

        if let nestedNode = checkNode as? Relation.NestedTypeNode {
            if let opNode = nestedNode.child as? Relation.OperatorNode {
                let calcFunc: ((RowAccessor) -> T?)? = OperationBuilder(context).build(opNode)
                return OperationBuilder.CalculatedField(calcFunc!, sqlType: opNode.type)
            }
        }

        return nil
    }

    public static func buildScalarFunc(_ node: Relation.RelNodeWithType,
                                       context: QueryContext) {
        if let scalerNode = node as? Relation.FieldScalarFuncNode {
            buildScalarFunc(scalerNode.definition as! FieldScalarFuncDef, context: context)
        }
    }

    public static func buildScalarFunc(_ scalarDef: FieldScalarFuncDef,
                                       context: QueryContext) {
        if scalarDef.calcFuncs.count > 0 {
            return
        }
        for childNode in scalarDef.args {
            if let calcNode = PredicateBuilderHelper<T>.checkBuildCaclField(childNode, context: context) {
                scalarDef.calcFuncs.append({data in
                    return calcNode.getValue(data: data, context: context) as Any?
                })
            } else {
                scalarDef.calcFuncs.append({data in
                    return childNode.getValue(data: data, context: context) as Any?
                })
            }
        }
    }
}

public class PredicateBuilderBasic {
    public enum CompOps {
        case EQ, NEQ, GT, LT, GTE, LTE
    }

    public static func tryEnsureMatchingTypes(
        _ lNode: inout Relation.RelNodeWithType,
        rNode: inout Relation.RelNodeWithType) {
        if lNode.type == rNode.type {
            return
        }

        if lNode.type != .BOOLEAN || lNode.type != .VARCHAR {
            if lNode.type.rawValue > rNode.type.rawValue {
                rNode = Relation.CastNumberNode(rNode, sqlType: lNode.type)
            } else {
                lNode = Relation.CastNumberNode(lNode, sqlType: rNode.type)
            }
        }
    }

    public class EqualOps<T: Equatable>: PredicateComparor {
        let eq = {(lhs: T, rhs: T) in return lhs == rhs}
        let neq = {(lhs: T, rhs: T) in return lhs != rhs}
        public func build(
            lRelNode: Relation.RelNodeWithType,
            rRelNode: Relation.RelNodeWithType,
            predicate: Predicate,
            context: QueryContext
        ) -> ((RowAccessor) -> Bool) {
            let lNode = PredicateBuilderHelper<T>.checkNode(lRelNode, context: context)
            let rNode = PredicateBuilderHelper<T>.checkNode(rRelNode, context: context)
            switch predicate {
            case .EQ:
                if lNode is Relation.LiteralNode && rNode is Relation.LiteralNode {
                    let lhs: T? = lNode.getValue(data: EmptyRA.empty, context: context)
                    let rhs: T? = rNode.getValue(data: EmptyRA.empty, context: context)
                    let value = lhs! == rhs!
                    return {_ in value}
                }

                return {row in
                    let lhs: T? = lNode.getValue(data: row, context: context)
                    let rhs: T? = rNode.getValue(data: row, context: context)
                    if lhs == nil || rhs == nil {return false}
                    return lhs! == rhs!
                }
            case .NEQ:
                if lNode is Relation.LiteralNode && rNode is Relation.LiteralNode {
                    let lhs: T? = lNode.getValue(data: EmptyRA.empty, context: context)
                    let rhs: T? = rNode.getValue(data: EmptyRA.empty, context: context)
                    let value = lhs! != rhs!
                    return {_ in value}
                }

                return {row in
                    let lhs: T? = lNode.getValue(data: row, context: context)
                    let rhs: T? = rNode.getValue(data: row, context: context)
                    if lhs == nil || rhs == nil {return false}
                    return lhs! != rhs!
                }
            default:
                fatalError("Comparison operator not valid for comparison: \(predicate)")
            }
        }

        public func getValue(
            node: Relation.RelNodeWithType,
            data: RowAccessor,
            context: QueryContext) -> T? {
                return node.getValue(data: data, context: context)
            }
    }

    public class ComparionOps<T: Comparable>: EqualOps<T> {
        let lt = {(lhs: T, rhs: T) in return lhs < rhs}
        let gt = {(lhs: T, rhs: T) in return lhs > rhs}
        let lte = {(lhs: T, rhs: T) in return lhs <= rhs}
        let gte = {(lhs: T, rhs: T) in return lhs >= rhs}
        override public func build( // swiftlint:disable:this cyclomatic_complexity function_body_length
            lRelNode: Relation.RelNodeWithType,
            rRelNode: Relation.RelNodeWithType,
            predicate: Predicate,
            context: QueryContext
        ) -> ((RowAccessor) -> Bool) {
            let lNode = PredicateBuilderHelper<T>.checkNode(lRelNode, context: context)
            let rNode = PredicateBuilderHelper<T>.checkNode(rRelNode, context: context)
            switch predicate {
            case .LT:
                if lNode is Relation.LiteralNode && rNode is Relation.LiteralNode {
                    let lhs: T? = lNode.getValue(data: EmptyRA.empty, context: context)
                    let rhs: T? = rNode.getValue(data: EmptyRA.empty, context: context)
                    let value = lhs! < rhs!
                    return {_ in value}
                }

                return {data in
                    let lhs: T? = lNode.getValue(data: data, context: context)
                    let rhs: T? = rNode.getValue(data: data, context: context)
                    if lhs == nil || rhs == nil {return false}
                    return lhs! < rhs!
                }
            case .GT:
                if lNode is Relation.LiteralNode && rNode is Relation.LiteralNode {
                    let lhs: T? = lNode.getValue(data: EmptyRA.empty, context: context)
                    let rhs: T? = rNode.getValue(data: EmptyRA.empty, context: context)
                    let value = lhs! > rhs!
                    return {_ in value}
                }

                return {data in
                    let lhs: T? = lNode.getValue(data: data, context: context)
                    let rhs: T? = rNode.getValue(data: data, context: context)
                    if lhs == nil || rhs == nil {return false}
                    return lhs! > rhs!
                }
            case .LTE:
                if lNode is Relation.LiteralNode && rNode is Relation.LiteralNode {
                    let lhs: T? = lNode.getValue(data: EmptyRA.empty, context: context)
                    let rhs: T? = rNode.getValue(data: EmptyRA.empty, context: context)
                    let value = lhs! <= rhs!
                    return {_ in value}
                }

                return {data in
                    let lhs: T? = lNode.getValue(data: data, context: context)
                    let rhs: T? = rNode.getValue(data: data, context: context)
                    if lhs == nil || rhs == nil {return false}
                    return lhs! <= rhs!
                }

            case .GTE:
                if lNode is Relation.LiteralNode && rNode is Relation.LiteralNode {
                    let lhs: T? = lNode.getValue(data: EmptyRA.empty, context: context)
                    let rhs: T? = rNode.getValue(data: EmptyRA.empty, context: context)
                    let value = lhs! >= rhs!
                    return {_ in value}
                }

                return {data in
                    let lhs: T? = lNode.getValue(data: data, context: context)
                    let rhs: T? = rNode.getValue(data: data, context: context)
                    if lhs == nil || rhs == nil {return false}
                    return lhs! >= rhs!
                }
            default:
                return super.build(lRelNode: lNode, rRelNode: rNode, predicate: predicate, context: context)
            }
        }
    }

    public var compOps: [SqlType: PredicateComparor]

    var predicateNode: Relation.PredicateNode
    var context: QueryContext
    public init(_ predicateNode: Relation.PredicateNode, context: QueryContext) {
        self.predicateNode = predicateNode
        self.context = context
        self.compOps = [
            .BOOLEAN: EqualOps<Bool>(),
            .INT8: ComparionOps<Int8>(),
            .INT16: ComparionOps<Int16>(),
            .INT32: ComparionOps<Int32>(),
            .INT64: ComparionOps<Int64>(),
            .UINT8: ComparionOps<UInt8>(),
            .UINT16: ComparionOps<UInt16>(),
            .UINT32: ComparionOps<UInt32>(),
            .UINT64: ComparionOps<UInt64>(),
            .FLOAT: ComparionOps<Float>(),
            .DOUBLE: ComparionOps<Double>(),
            .VARCHAR: ComparionOps<String>(),
            .DATE: ComparionOps<Date>()
        ]
    }

    public func build( // swiftlint:disable:this cyclomatic_complexity function_body_length
        _ tdef: TableDef?, rowCount: UInt) -> ((RowAccessor) -> Bool)? {
        // if there is only one child then it must
        // be a NestedNode
        if let nestedNode = self.predicateNode as? Relation.NestedPredNode {
            let wrapper = PredicateBuilderBasic(nestedNode.child, context: self.context)
            return wrapper.build(tdef, rowCount: rowCount)
        }

        // currently only two chilren are expected
        let left = predicateNode.children[0]
        let right = predicateNode.children[1]
        switch predicateNode.op {
        case .AND:
            let lPred = PredicateBuilderBasic(left as! Relation.PredicateNode,
                                         context: self.context).build(tdef, rowCount: rowCount)
            let rPred = PredicateBuilderBasic(right as! Relation.PredicateNode,
                                         context: self.context).build(tdef, rowCount: rowCount)
            if lPred == nil && rPred == nil {
                return nil
            } else if lPred == nil && rPred != nil {
                if tdef != nil {return nil}
                return {data in rPred!(data)}
            } else if lPred != nil && rPred == nil {
                if tdef != nil {return nil}
                return {data in lPred!(data)}
            }

            return {data in
                return lPred!(data) && rPred!(data)
            }
        case .OR:
            let lPred = PredicateBuilderBasic(left as! Relation.PredicateNode,
                                         context: self.context).build(tdef, rowCount: rowCount)
            let rPred = PredicateBuilderBasic(right as! Relation.PredicateNode,
                                         context: self.context).build(tdef, rowCount: rowCount)
            if lPred == nil && rPred == nil {
                return nil
            } else if lPred == nil && rPred != nil {
                return {data in rPred!(data)}
            } else if lPred != nil && rPred == nil {
                return {data in lPred!(data)}
            }

            return {data in
                return lPred!(data) || rPred!(data)
            }
        default:
            var lNode = left as! Relation.RelNodeWithType
            var rNode = right as! Relation.RelNodeWithType

            // if tabledef is supplied then limit query to
            // fields that are assocatied with the table
            if let leftField = lNode as? Relation.FieldNode {
                if tdef != nil && leftField.definition.tableDef != tdef {
                    return nil
                }

                context.parameter[leftField.definition.id] = FieldOverride()
            }

            if let rightField = rNode as? Relation.FieldNode {
                if tdef != nil && rightField.definition.tableDef != tdef {
                    return nil
                }

                context.parameter[rightField.definition.id] = FieldOverride()
            }

            PredicateBuilderBasic.tryEnsureMatchingTypes(&lNode, rNode: &rNode)
            return self.compOps[lNode.type]!.build(
                lRelNode: lNode, rRelNode: rNode, predicate: predicateNode.op, context: context)
        }
    }
}
