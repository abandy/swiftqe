/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation

public protocol PredicateComparorCol {
    func build(
        lRelNode: Relation.RelNodeWithType,
        rRelNode: Relation.RelNodeWithType,
        predicate: Predicate,
        context: QueryContext) -> ((RowAccessor, _: inout [Bool]) -> Void)
}

public class PredicateBuilderCol { // swiftlint:disable:this type_body_length
    public enum CompOps {
        case EQ, NEQ, GT, LT, GTE, LTE
    }

    public class EqualOps<T: Equatable>: PredicateComparorCol {
        let eq = {(lhs: T, rhs: T) in return lhs == rhs}
        let neq = {(lhs: T, rhs: T) in return lhs != rhs}
        public func build( // swiftlint:disable:this cyclomatic_complexity
            lRelNode: Relation.RelNodeWithType,
            rRelNode: Relation.RelNodeWithType,
            predicate: Predicate,
            context: QueryContext
        ) -> ((RowAccessor, _: inout [Bool]) -> Void) {
            let lNode = PredicateBuilderHelper<T>.checkNode(lRelNode, context: context)
            let rNode = PredicateBuilderHelper<T>.checkNode(rRelNode, context: context)
            switch predicate {
            case .EQ:
                if lNode is Relation.LiteralNode && rNode is Relation.LiteralNode {
                    let lhs: T? = lNode.getValue(data: EmptyRA.empty, context: context)
                    let rhs: T? = rNode.getValue(data: EmptyRA.empty, context: context)
                    let value = lhs! == rhs!
                    return {(_: any RowAccessor, result: inout [Bool]) in
                        for idx in 0..<result.count {result[idx] = value}
                    }
                }

                return {(row: any RowAccessor, result: inout [Bool]) in
                    let localRow = row.clone()
                    for idx in 0..<result.count {
                        _ = localRow.to(rowIndex: UInt(idx))
                        let lhs: T? = lNode.getValue(data: localRow, context: context)
                        let rhs: T? = rNode.getValue(data: localRow, context: context)
                        if lhs == nil || rhs == nil {result[idx] = false
                        } else {result[idx] = lhs! == rhs!}
                    }
                }
            case .NEQ:
                if lNode is Relation.LiteralNode && rNode is Relation.LiteralNode {
                    let lhs: T? = lNode.getValue(data: EmptyRA.empty, context: context)
                    let rhs: T? = rNode.getValue(data: EmptyRA.empty, context: context)
                    let value = lhs! != rhs!
                    return {(_: any RowAccessor, result: inout [Bool]) in
                        for idx in 0..<result.count {result[idx] = value}
                    }
                }

                return {(row: any RowAccessor, result: inout [Bool]) in
                    let localRow = row.clone()
                    for idx in 0..<result.count {
                        _ = localRow.to(rowIndex: UInt(idx))
                        let lhs: T? = lNode.getValue(data: localRow, context: context)
                        let rhs: T? = rNode.getValue(data: localRow, context: context)
                        if lhs == nil || rhs == nil {result[idx] = false
                        } else {result[idx] = lhs! != rhs!}
                    }
                }
            default:
                fatalError("Comparison operator not valid for comparison: \(predicate)")
            }
        }

        public func getValue(
            node: Relation.RelNodeWithType,
            data: RowAccessor,
            context: QueryContext
        ) -> T? {
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
        ) -> ((RowAccessor, _: inout [Bool]) -> Void) {
            let lNode = PredicateBuilderHelper<T>.checkNode(lRelNode, context: context)
            let rNode = PredicateBuilderHelper<T>.checkNode(rRelNode, context: context)
            switch predicate {
            case .LT:
                if lNode is Relation.LiteralNode && rNode is Relation.LiteralNode {
                    let lhs: T? = lNode.getValue(data: EmptyRA.empty, context: context)
                    let rhs: T? = rNode.getValue(data: EmptyRA.empty, context: context)
                    let value = lhs! < rhs!
                    return {(_: any RowAccessor, result: inout [Bool]) in
                        for idx in 0..<result.count {result[idx] = value}
                    }
                }

                return {(row: any RowAccessor, result: inout [Bool]) in
                    let localRow = row.clone()
                    for idx in 0..<result.count {
                        _ = localRow.to(rowIndex: UInt(idx))
                        let lhs: T? = lNode.getValue(data: localRow, context: context)
                        let rhs: T? = rNode.getValue(data: localRow, context: context)
                        if lhs == nil || rhs == nil {result[idx] = false
                        } else {result[idx] = lhs! < rhs!}
                    }
                }
            case .GT:
                if lNode is Relation.LiteralNode && rNode is Relation.LiteralNode {
                    let lhs: T? = lNode.getValue(data: EmptyRA.empty, context: context)
                    let rhs: T? = rNode.getValue(data: EmptyRA.empty, context: context)
                    let value = lhs! > rhs!
                    return {(_: any RowAccessor, result: inout [Bool]) in
                        for idx in 0..<result.count {result[idx] = value}
                    }
                }

                return {(row: any RowAccessor, result: inout [Bool]) in
                    let localRow = row.clone()
                    for idx in 0..<result.count {
                        _ = localRow.to(rowIndex: UInt(idx))
                        let lhs: T? = lNode.getValue(data: localRow, context: context)
                        let rhs: T? = rNode.getValue(data: localRow, context: context)
                        if lhs == nil || rhs == nil {result[idx] = false
                        } else {result[idx] = lhs! > rhs!}
                    }
                }
            case .LTE:
                if lNode is Relation.LiteralNode && rNode is Relation.LiteralNode {
                    let lhs: T? = lNode.getValue(data: EmptyRA.empty, context: context)
                    let rhs: T? = rNode.getValue(data: EmptyRA.empty, context: context)
                    let value = lhs! <= rhs!
                    return {(_: any RowAccessor, result: inout [Bool]) in
                        for idx in 0..<result.count {result[idx] = value}
                    }
                }

                return {(row: any RowAccessor, result: inout [Bool]) in
                    let localRow = row.clone()
                    for idx in 0..<result.count {
                        _ = localRow.to(rowIndex: UInt(idx))
                        let lhs: T? = lNode.getValue(data: localRow, context: context)
                        let rhs: T? = rNode.getValue(data: localRow, context: context)
                        if lhs == nil || rhs == nil {result[idx] = false
                        } else {result[idx] = lhs! <= rhs!}
                    }
                }

            case .GTE:
                if lNode is Relation.LiteralNode && rNode is Relation.LiteralNode {
                    let lhs: T? = lNode.getValue(data: EmptyRA.empty, context: context)
                    let rhs: T? = rNode.getValue(data: EmptyRA.empty, context: context)
                    let value = lhs! >= rhs!
                    return {(_: any RowAccessor, result: inout [Bool]) in
                        for idx in 0..<result.count {result[idx] = value}
                    }
                }

                return {(row: any RowAccessor, result: inout [Bool]) in
                    let localRow = row.clone()
                    for idx in 0..<result.count {
                        _ = localRow.to(rowIndex: UInt(idx))
                        let lhs: T? = lNode.getValue(data: localRow, context: context)
                        let rhs: T? = rNode.getValue(data: localRow, context: context)
                        if lhs == nil || rhs == nil {result[idx] = false
                        } else {result[idx] = lhs! >= rhs!}
                    }
                }
            default:
                return super.build(lRelNode: lNode, rRelNode: rNode, predicate: predicate, context: context)
            }
        }
    }

    public var compOps: [SqlType: PredicateComparorCol]

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
            .VARCHAR: ComparionOps<String>()
        ]
    }

    public func build( // swiftlint:disable:this cyclomatic_complexity function_body_length
        _ tdef: TableDef?, rowCount: UInt) -> ((RowAccessor, _: inout [Bool]) -> Void)? {
        // if there is only one child then it must
        // be a NestedNode
        if let nestedNode = self.predicateNode as? Relation.NestedPredNode {
            let wrapper = PredicateBuilderCol(nestedNode.child, context: self.context)
            return wrapper.build(tdef, rowCount: rowCount)
        }

        // currently only two chilren are expected
        let left = predicateNode.children[0]
        let right = predicateNode.children[1]
        switch predicateNode.op {
        case .AND:
            let lPred = PredicateBuilderCol(left as! Relation.PredicateNode,
                                            context: self.context).build(tdef, rowCount: rowCount)
            let rPred = PredicateBuilderCol(right as! Relation.PredicateNode,
                                            context: self.context).build(tdef, rowCount: rowCount)
            if lPred == nil && rPred == nil {
                return nil
            } else if lPred == nil && rPred != nil {
                if tdef != nil {return nil}
                return {(row: any RowAccessor, result: inout [Bool]) in
                    rPred!(row, &result)
                }
            } else if lPred != nil && rPred == nil {
                if tdef != nil {return nil}
                return {(row: any RowAccessor, result: inout [Bool]) in
                    lPred!(row, &result)
                }
            }

            return {(row: any RowAccessor, result: inout [Bool]) in
                var rResult = [Bool](repeating: false, count: Int(rowCount))
                lPred!(row, &result)
                rPred!(row, &rResult)
                for idx in 0..<result.count {
                    result[idx] = result[idx] && rResult[idx]
                }
            }
        case .OR:
            let lPred = PredicateBuilderCol(left as! Relation.PredicateNode,
                                            context: self.context).build(tdef, rowCount: rowCount)
            let rPred = PredicateBuilderCol(right as! Relation.PredicateNode,
                                            context: self.context).build(tdef, rowCount: rowCount)
            if lPred == nil && rPred == nil {
                return nil
            } else if lPred == nil && rPred != nil {
                return {(row: any RowAccessor, result: inout [Bool]) in
                    rPred!(row, &result)
                }
            } else if lPred != nil && rPred == nil {
                return {(row: any RowAccessor, result: inout [Bool]) in
                    lPred!(row, &result)
                }
            }

            return {(row: any RowAccessor, result: inout [Bool]) in
                var rResult = [Bool](repeating: false, count: Int(rowCount))
                lPred!(row, &result)
                rPred!(row, &rResult)
                for idx in 0..<result.count {
                    result[idx] = result[idx] || rResult[idx]
                }
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
