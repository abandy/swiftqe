/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Arrow

public protocol ScalarFunc {
    var funcSqlType: SqlType {get}
    init(_ sqlTypes: [SqlType])
    func getValue(_ data: [Any?]?) -> Any?
}

func isNumericScalerFunc(_ fType: ScalarFuncType) -> Bool {
    return fType == .ABS

}

func ensureArgsAreSameType(_ fType: ScalarFuncType, argNodes: inout [Relation.RelNodeWithType]) throws -> SqlType {
    if argNodes.count == 0 {
        throw EngineError.generic(
            "Arguments missing for scalar func: \(fType)")
    }

    var outputType = argNodes[0].type
    if isNumericScalerFunc(fType) == true {
        var conversionRequired = false
        for argNode in argNodes {
            if argNode.type == .BOOLEAN || argNode.type == .VARCHAR {
                throw EngineError.generic(
                    "Incorrect parameter type for scalar func: \(fType) with type: \(argNode.type)")
            }

            if outputType.rawValue < argNode.type.rawValue {
                outputType = argNode.type
                conversionRequired = true
            }
        }

        if conversionRequired == true {
            for idx in 0..<argNodes.count where argNodes[idx].type != outputType {
                argNodes[idx] = Relation.CastNumberNode(argNodes[idx], sqlType: outputType)
            }
        }
    } else {
        for argNode in argNodes where outputType != argNode.type {
            throw EngineError.generic(
                "Parameter types for scalar func: \(fType) must be the same: \(argNode.type)")
        }
    }

    return outputType
}

extension FieldScalarFuncDef {
    static func getAggFunc(_ funcType: ScalarFuncType, inputTypes: [SqlType]) -> ScalarFunc? {
        switch funcType {
        case .ABS:
            if inputTypes.count != 1 {
                return nil
            }
            return ABS(inputTypes)
        case .LENGTH:
            if inputTypes.count != 1 {
                return nil
            }
            return inputTypes[0] != .VARCHAR ? nil : LEN(inputTypes)
        case .LOWER:
            if inputTypes.count != 1 {
                return nil
            }
            return inputTypes[0] != .VARCHAR ? nil : LOWER(inputTypes)
        case .POWER:
            if inputTypes.count != 2 {
                return nil
            }
            return inputTypes[1] != .INT32 ? nil : POWER(inputTypes)
        }
    }

    class ABS: ScalarFunc {
        var sqlType: SqlType
        var funcSqlType: SqlType
        required init(_ sqlTypes: [SqlType]) {
            self.sqlType = sqlTypes[0]
            self.funcSqlType = sqlType
        }

        func getValue(_ data: [Any?]?) -> Any? {
            if data == nil || data!.count != 1 || data![0] == nil {
                return nil
            }

            switch sqlType {
            case .INT8:
                return abs(data![0]! as! Int8)
            case .INT16:
                return abs(data![0]! as! Int16)
            case .INT32:
                return abs(data![0]! as! Int32)
            case .INT64:
                return abs(data![0]! as! Int64)
            case .UINT8, .UINT16, .UINT32, .UINT64:
                return data![0]!
            case .DOUBLE:
                return abs(data![0]! as! Double)
            case .FLOAT:
                return abs(data![0]! as! Float)
            default:
                return 0
            }
        }
    }

    class POWER: ScalarFunc {
        var sqlType: SqlType
        var funcSqlType: SqlType = .DOUBLE
        required init(_ sqlTypes: [SqlType]) {
            self.sqlType = sqlTypes[0]
        }

        func getValue( // swiftlint:disable:this cyclomatic_complexity
            _ data: [Any?]?) -> Any? {
            if data == nil || data!.count != 2 || data![0] == nil || data![1] == nil {
                return nil
            }

            var input: Decimal = 0
            let power = Int(data![1]! as! Int32)
            switch sqlType {
            case .INT8:
                input = Decimal(data![0]! as! Int8)
            case .INT16:
                input = Decimal(data![0]! as! Int16)
            case .INT32:
                input = Decimal(data![0]! as! Int32)
            case .INT64:
                input = Decimal(data![0]! as! Int64)
            case .UINT8:
                input = Decimal(data![0]! as! UInt8)
            case .UINT16:
                input = Decimal(data![0]! as! UInt16)
            case .UINT32:
                input = Decimal(data![0]! as! UInt32)
            case .UINT64:
                input = Decimal(data![0]! as! UInt64)
            case .DOUBLE:
                input = Decimal(data![0]! as! Double)
            case .FLOAT:
                input = Decimal(Double(data![0]! as! Float))
            default:
                input = 0
            }

            return Double(truncating: pow(input, power) as NSNumber)
        }
    }

    class LEN: ScalarFunc {
        var sqlType: SqlType
        var funcSqlType: SqlType {.INT32}
        required init(_ sqlTypes: [SqlType]) {
            self.sqlType = .VARCHAR
        }

        func getValue(_ data: [Any?]?) -> Any? {
            if data == nil || data!.count != 1 || data![0] == nil {
                return nil
            }

            return Int32((data![0]! as! String).count)
        }
    }

    class LOWER: ScalarFunc {
        var sqlType: SqlType
        var funcSqlType: SqlType {.VARCHAR}
        required init(_ sqlTypes: [SqlType]) {
            self.sqlType = .VARCHAR
        }

        func getValue(_ data: [Any?]?) -> Any? {
            if data == nil || data!.count != 1 || data![0] == nil {
                return nil
            }

            return (data![0]! as! String).lowercased()
        }
    }
}
