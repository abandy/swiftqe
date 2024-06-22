/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Arrow

public protocol OpComparor {
    func build(
        lNode: Relation.RelNodeWithType,
        rNode: Relation.RelNodeWithType,
        op: Operator,
        context: QueryContext) -> ((RowAccessor) -> Any?)
}

public class OperationBuilder {
    public class CalculatedField: Relation.RelNodeWithType {
        let calcFunc: ((RowAccessor) -> Any?)
        init<T>(_ calcFunc: @escaping ((RowAccessor) -> T?), sqlType: SqlType) {
            self.calcFunc = calcFunc
            super.init(sqlType)
        }

        public override func getValue<T>(data: RowAccessor, context: QueryContext) -> T? {
            return calcFunc(data) as! T?
        }
    }

    public class NumericMathOps<T: Numeric & BinaryInteger>: OpComparor {
        public func build( // swiftlint:disable:this cyclomatic_complexity
            lNode: Relation.RelNodeWithType,
            rNode: Relation.RelNodeWithType,
            op: Operator,
            context: QueryContext) -> ((RowAccessor) -> Any?) {
            switch op {
            case .ADD:
                return {row in
                    let lhs: T? = lNode.getValue(data: row, context: context)
                    let rhs: T? = rNode.getValue(data: row, context: context)
                    if lhs == nil || rhs == nil {return 0}
                    return lhs! + rhs!
                }
            case .SUBSTRACT:
                return {row in
                    let lhs: T? = lNode.getValue(data: row, context: context)
                    let rhs: T? = rNode.getValue(data: row, context: context)
                    if lhs == nil || rhs == nil {return 0}
                    return lhs! - rhs!
                }
            case .MULTIPLY:
                return {row in
                    let lhs: T? = lNode.getValue(data: row, context: context)
                    let rhs: T? = rNode.getValue(data: row, context: context)
                    if lhs == nil || rhs == nil {return 0}
                    return lhs! * rhs!
                }
            case .DIVIDE:
                return {row in
                    let lhs: T? = lNode.getValue(data: row, context: context)
                    let rhs: T? = rNode.getValue(data: row, context: context)
                    if lhs == nil || rhs == nil {return 0}
                    return lhs! / rhs!
                }
            case .MODULE:
                return {row in
                    let lhs: T? = lNode.getValue(data: row, context: context)
                    let rhs: T? = rNode.getValue(data: row, context: context)
                    if lhs == nil || rhs == nil {return 0}
                    return lhs! % rhs!
                }
            default:
                fatalError("Operator not supported for Integer type: \(op)")
            }
        }

        public func getValue(node: Relation.RelNodeWithType, data: RowAccessor, context: QueryContext) -> T? {
            return node.getValue(data: data, context: context)
        }
    }

    public class DoubleMathOps<T: FloatingPoint>: OpComparor {
        public func build(
            lNode: Relation.RelNodeWithType,
            rNode: Relation.RelNodeWithType,
            op: Operator,
            context: QueryContext) -> ((RowAccessor) -> Any?) {
            switch op {
            case .ADD:
                return {row in
                    let lhs: T? = lNode.getValue(data: row, context: context)
                    let rhs: T? = rNode.getValue(data: row, context: context)
                    if lhs == nil || rhs == nil {return 0}
                    return lhs! + rhs!
                }
            case .SUBSTRACT:
                return {row in
                    let lhs: T? = lNode.getValue(data: row, context: context)
                    let rhs: T? = rNode.getValue(data: row, context: context)
                    if lhs == nil || rhs == nil {return 0}
                    return lhs! - rhs!
                }
            case .MULTIPLY:
                return {row in
                    let lhs: T? = lNode.getValue(data: row, context: context)
                    let rhs: T? = rNode.getValue(data: row, context: context)
                    if lhs == nil || rhs == nil {return 0}
                    return lhs! * rhs!
                }
            case .DIVIDE:
                return {row in
                    let lhs: T? = lNode.getValue(data: row, context: context)
                    let rhs: T? = rNode.getValue(data: row, context: context)
                    if lhs == nil || rhs == nil {return 0}
                    return lhs! / rhs!
                }
            default:
                fatalError("Operator not supported for Real types: \(op)")
            }
        }

        public func getValue(node: Relation.RelNodeWithType, data: RowAccessor, context: QueryContext) -> T? {
            return node.getValue(data: data, context: context)
        }
    }
    let context: QueryContext
    let numericComps: [SqlType: OpComparor] = [
        .INT8: NumericMathOps<Int8>(),
        .INT16: NumericMathOps<Int16>(),
        .INT32: NumericMathOps<Int32>(),
        .INT64: NumericMathOps<Int64>(),
        .UINT8: NumericMathOps<UInt8>(),
        .UINT16: NumericMathOps<UInt16>(),
        .UINT32: NumericMathOps<UInt32>(),
        .UINT64: NumericMathOps<UInt64>(),
        .FLOAT: DoubleMathOps<Float>(),
        .DOUBLE: DoubleMathOps<Double>()
    ]

    init(_ context: QueryContext) {
        self.context = context
    }

    public func build<T>(_ node: Relation.RelNodeWithType) -> ((RowAccessor) -> T?) {
        // if there is only one child then it must
        // be a NestedPredNode
        if let nestedNode = node as? Relation.NestedTypeNode {
            return self.build(nestedNode.child as! Relation.RelNodeWithType)
        }

        let opNode = node as! Relation.OperatorNode

        var left = opNode.children[0] as! Relation.RelNodeWithType
        var right = opNode.children[1] as! Relation.RelNodeWithType

        if let calcFunc = buildCalcFunc(left) as ((RowAccessor) -> T?)? {
            left = CalculatedField(calcFunc, sqlType: opNode.type)
        }
        if let calcFunc = buildCalcFunc(right) as ((RowAccessor) -> T?)? {
            right = CalculatedField(calcFunc, sqlType: opNode.type)
        }

        let numericFunc =  self.numericComps[node.type]!.build(
            lNode: left, rNode: right, op: opNode.op, context: context)
        return {accessor in return numericFunc(accessor) as? T}
    }

    func buildCalcFunc<T>(_ node: Relation.RelNodeWithType) -> ((RowAccessor) -> T?)? {
        if let complex = node as? Relation.FieldComplexNode {
            return build(complex) as ((RowAccessor) -> T?)
        } else if let nested = node as? Relation.NestedTypeNode {
            return build(nested) as ((RowAccessor) -> T?)
        } else if let oper = node as? Relation.OperatorNode {
            return build(oper) as ((RowAccessor) -> T?)
        }

        return nil
    }
}
