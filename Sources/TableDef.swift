/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Arrow
import Atomics

public class TableDef: Equatable {
    public var id = uniqueId.loadThenWrappingIncrement(ordering: .relaxed)
    public static func == (lhs: TableDef, rhs: TableDef) -> Bool {
        return lhs.name == rhs.name
    }

    public var name: String
    public var fields: [FieldDef]
    public var fieldMap = [String: FieldDef]()
    public var fieldLength: Int { return fields.count }

    public init(_ name: String, fields: [FieldDef], buildFieldNames: Bool) {
        self.name = name
        self.fields = fields
        for field in fields {
            if buildFieldNames {
                self.fieldMap["field\(field.id)"] = field
            } else {
                self.fieldMap[field.name] = field
            }
        }
    }

    public init(_ name: String, fields: [FieldDef]) {
        self.name = name
        self.fields = fields
        for field in fields {
            self.fieldMap[field.name] = field
        }
    }

    public func contains(field: FieldDef) -> Bool {
        return fieldMap.keys.contains(field.name) &&
            (field.tableDef == nil || field.tableDef!.name == self.name)
    }

    public static func from( // swiftlint:disable:this cyclomatic_complexity
        _ rb: RecordBatch, tableName: String) -> TableDef {
        let schema = rb.schema
        var tableFields = [FieldBasicDef]()
        var offset = 0
        var sqlType: SqlType
        for field: ArrowField in schema.fields {
            switch field.type.id {
            case .int8:
                sqlType = SqlType.INT8
            case .int16:
                sqlType = SqlType.INT16
            case .int32:
                sqlType = SqlType.INT32
            case .int64:
                sqlType = SqlType.INT64
            case .uint8:
                sqlType = SqlType.UINT8
            case .uint16:
                sqlType = SqlType.UINT16
            case .uint32:
                sqlType = SqlType.UINT32
            case .uint64:
                sqlType = SqlType.UINT64
            case .float:
                sqlType = SqlType.FLOAT
            case .double:
                sqlType = SqlType.DOUBLE
            case .string:
                sqlType = SqlType.VARCHAR
            case .date32, .date64:
                sqlType = SqlType.DATE
            default:
                fatalError("Unsupported field type id: \(field.type.id)")
            }

            tableFields.append(
                FieldBasicDef(
                    field.name,
                    sourceName: tableName,
                    type: sqlType,
                    dataOffset: offset))
            offset += 1
        }

        return TableDef(tableName, fields: tableFields)
    }
}
