/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Arrow

public protocol WindowFunc {
    var sqlType: SqlType {get}
    var funcSqlType: SqlType {get}
    init(_ sqlType: SqlType)
    func reset()
    func load(_ data: Any?, appendFunc: ((Any?) -> Void))
    func finish(appendFunc: ((Any?) -> Void))
}

extension WindowFunc {
    static func isDouble(_ sqlType: SqlType) -> Bool {
        switch sqlType {
        case .FLOAT, .DOUBLE:
            return true
        default:
            return false
        }
    }

    static func isInt(_ sqlType: SqlType) -> Bool {
        switch sqlType {
        case .INT8, .INT16, .INT32, .INT64, .UINT8, .UINT16, .UINT32, .UINT64:
            return true
        default:
            return false
        }
    }

    static func toDouble(_ sqlType: SqlType, // swiftlint:disable:this cyclomatic_complexity
                         data: Any) -> Double {
        switch sqlType {
        case .INT8:
            return Double(data as! Int8)
        case .INT16:
            return Double(data as! Int16)
        case .INT32:
            return Double(data as! Int32)
        case .INT64:
            return Double(data as! Int64)
        case .UINT8:
            return Double(data as! UInt8)
        case .UINT16:
            return Double(data as! UInt16)
        case .UINT32:
            return Double(data as! UInt32)
        case .UINT64:
            return Double(data as! UInt64)
        case .FLOAT:
            return Double(data as! Float)
        case .DOUBLE:
            return data as! Double
        default:
            return 0
        }
    }

    static func toInt(_ sqlType: SqlType, // swiftlint:disable:this cyclomatic_complexity
                      data: Any) -> Int64 {
        switch sqlType {
        case .INT8:
            return Int64(data as! Int8)
        case .INT16:
            return Int64(data as! Int16)
        case .INT32:
            return Int64(data as! Int32)
        case .INT64:
            return data as! Int64
        case .UINT8:
            return Int64(data as! UInt8)
        case .UINT16:
            return Int64(data as! UInt16)
        case .UINT32:
            return Int64(data as! UInt32)
        case .UINT64:
            return Int64(data as! UInt64)
        case .DOUBLE:
            return Int64(data as! Double)
        case .FLOAT:
            return Int64(data as! Float)
        default:
            return 0
        }
    }
}

extension FieldWindowFuncDef {
    static func getAggFunc(_ winFuncType: WindowFuncType, sqlType: SqlType) -> WindowFunc? {
        switch winFuncType {
        case .SUM:
            return SumDouble.isDouble(sqlType) ?
            SumDouble(sqlType) : SumInt.isInt(sqlType) ?
            SumInt(sqlType) : nil
        case .AVG:
            return AvgDouble.isDouble(sqlType) ?
            AvgDouble(sqlType) : AvgInt.isInt(sqlType) ?
            AvgInt(sqlType) : nil
        case .MIN:
            return MinMaxFunc.minFor(sqlType)
        case .MAX:
            return MinMaxFunc.maxFor(sqlType)
        case .STDDEV:
            return StdDevPop(sqlType)
        }
    }

    class SumDouble: WindowFunc {
        var data: Double = 0
        var sqlType: SqlType
        var funcSqlType = SqlType.DOUBLE
        required init(_ sqlType: SqlType) {
            self.sqlType = sqlType
        }

        func load(_ data: Any?, appendFunc: ((Any?) -> Void)) {
            if data == nil {
                return
            }

            self.data += SumDouble.toDouble(sqlType, data: data!)
        }

        func reset() {
            data = 0
        }

        func finish(appendFunc: ((Any?) -> Void)) {
            appendFunc(self.data)
        }
    }

    class SumInt: WindowFunc {
        var data: Int64 = 0
        var sqlType: SqlType
        var funcSqlType = SqlType.INT64
        required init(_ sqlType: SqlType) {
            self.sqlType = sqlType
        }

        func load(_ data: Any?, appendFunc: ((Any?) -> Void)) {
            if data == nil {
                return
            }

            self.data += SumInt.toInt(sqlType, data: data!)
        }

        func reset() {
            self.data = 0
        }

        func finish(appendFunc: ((Any?) -> Void)) {
            appendFunc(self.data)
        }
    }

    class AvgDouble: WindowFunc {
        var data: Double = 0
        var count: UInt64 = 0
        var sqlType: SqlType
        var funcSqlType = SqlType.DOUBLE
        required init(_ sqlType: SqlType) {
            self.sqlType = sqlType
        }

        func load(_ data: Any?, appendFunc: ((Any?) -> Void)) {
            if data == nil {
                return
            }

            self.count += 1
            self.data += AvgDouble.toDouble(sqlType, data: data!)
        }

        func reset() {
            self.data = 0
        }

        func finish(appendFunc: ((Any?) -> Void)) {
            if self.count == 0 {
                appendFunc(Double(self.count))
            } else {
                appendFunc(self.data/Double(self.count))
            }
        }
    }

    class AvgInt: WindowFunc {
        var data: Int64 = 0
        var count: UInt64 = 0
        var sqlType: SqlType
        var funcSqlType = SqlType.INT64
        required init(_ sqlType: SqlType) {
            self.sqlType = sqlType
        }

        func load(_ data: Any?, appendFunc: ((Any?) -> Void)) {
            if data == nil {
                return
            }

            self.count += 1
            self.data += AvgInt.toInt(sqlType, data: data!)
        }

        func reset() {
            self.data = 0
        }

        func finish(appendFunc: ((Any?) -> Void)) {
            if self.count == 0 {
                appendFunc(Int64(0))
            } else {
                appendFunc(self.data/Int64(self.count))
            }
        }
    }

    class MinMaxFunc: WindowFunc {
        var sqlType: SqlType
        var funcSqlType: SqlType
        required init(_ sqlType: SqlType) {
            self.sqlType = sqlType
            self.funcSqlType = sqlType
        }

        static func minFor( // swiftlint:disable:this cyclomatic_complexity
            _ sqlType: SqlType) -> WindowFunc? {
            switch sqlType {
            case .DOUBLE: return MinDouble<Double>(sqlType)
            case .FLOAT: return MinDouble<Float>(sqlType)
            case .INT8: return MinInt<Int8>(sqlType)
            case .INT16: return MinInt<Int16>(sqlType)
            case .INT32: return MinInt<Int32>(sqlType)
            case .INT64: return MinInt<Int64>(sqlType)
            case .UINT8: return MinInt<UInt8>(sqlType)
            case .UINT16: return MinInt<UInt16>(sqlType)
            case .UINT32: return MinInt<UInt32>(sqlType)
            case .UINT64: return MinInt<UInt64>(sqlType)
            default: return nil
            }
        }

        static func maxFor( // swiftlint:disable:this cyclomatic_complexity
            _ sqlType: SqlType) -> WindowFunc? {
            switch sqlType {
            case .DOUBLE: return MaxDouble<Double>(sqlType)
            case .FLOAT: return MaxDouble<Float>(sqlType)
            case .INT8: return MaxInt<Int8>(sqlType)
            case .INT16: return MaxInt<Int16>(sqlType)
            case .INT32: return MaxInt<Int32>(sqlType)
            case .INT64: return MaxInt<Int64>(sqlType)
            case .UINT8: return MaxInt<UInt8>(sqlType)
            case .UINT16: return MaxInt<UInt16>(sqlType)
            case .UINT32: return MaxInt<UInt32>(sqlType)
            case .UINT64: return MaxInt<UInt64>(sqlType)
            default: return nil
            }
        }

        func reset() {}
        func load(_ data: Any?, appendFunc: ((Any?) -> Void)) {}
        func finish(appendFunc: ((Any?) -> Void)) {}
    }

    class MinDouble<T: FloatingPoint>: MinMaxFunc {
        var data: T?
        override func load(_ data: Any?, appendFunc: ((Any?) -> Void)) {
            if data == nil { return }
            let funcData = data as! T
            if self.data == nil || funcData < self.data! { self.data = funcData }
        }

        override func reset() {
            self.data = 0
        }

        override func finish(appendFunc: ((Any?) -> Void)) { appendFunc(self.data) }
    }

    class MinInt<T: BinaryInteger>: MinMaxFunc {
        var data: T?
        override func load(_ data: Any?, appendFunc: ((Any?) -> Void)) {
            if data == nil { return }
            let funcData = data as! T
            if self.data == nil || funcData < self.data! { self.data = funcData }
        }

        override func reset() {
            self.data = 0
        }

        override func finish(appendFunc: ((Any?) -> Void)) { appendFunc(self.data) }
    }

    class MaxDouble<T: FloatingPoint>: MinMaxFunc {
        var data: T?
        override func load(_ data: Any?, appendFunc: ((Any?) -> Void)) {
            if data == nil { return }
            let funcData = data as! T
            if self.data == nil || self.data! < funcData { self.data = funcData }
        }

        override func reset() {
            self.data = 0
        }

        override func finish(appendFunc: ((Any?) -> Void)) { appendFunc(self.data) }
    }

    class MaxInt<T: BinaryInteger>: MinMaxFunc {
        var data: T?
        override func load(_ data: Any?, appendFunc: ((Any?) -> Void)) {
            if data == nil { return }
            let funcData = data as! T
            if self.data == nil || self.data! < funcData { self.data = funcData }
        }

        override func finish(appendFunc: ((Any?) -> Void)) { appendFunc(self.data) }
    }

    class StdDevPop: WindowFunc {
        var mean: Double = 0
        var count: UInt64 = 0
        var variance: Double = 0
        var sqlType: SqlType
        var funcSqlType = SqlType.DOUBLE
        required init(_ sqlType: SqlType) {
            self.sqlType = sqlType
        }

        func load(_ data: Any?, appendFunc: ((Any?) -> Void)) {
            if data == nil {
                return
            }

            self.count += 1
            let val = StdDevPop.toDouble(sqlType, data: data!)
            let meanNext = mean + (val - mean) / Double(self.count)
            variance += (val - mean) * (val - meanNext)
            self.mean = meanNext
        }

        func reset() {
            self.mean = 0
            self.count = 0
            self.variance = 0
        }

        func finish(appendFunc: ((Any?) -> Void)) {
            if self.count == 0 {
                appendFunc(Double(self.count))
            } else {
                appendFunc((self.variance/Double(self.count)).squareRoot())
            }
        }
    }
}
