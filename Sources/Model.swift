/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Arrow
import Atomics

public class Schema {
    public var id = uniqueId.loadThenWrappingIncrement(ordering: .relaxed)
    public var fieldToTableMap = [String: [String]]()
    public private(set) var tables = [String: TableDef]()
    public func add(_ table: TableDef) {
        tables[table.name] = table
        for fieldInfo in table.fieldMap {
            fieldInfo.value.setTable(table)
            if !fieldToTableMap.keys.contains(fieldInfo.key) {
                fieldToTableMap[fieldInfo.key] = [String]()
            }

            fieldToTableMap[fieldInfo.key]!.append(table.name)
        }
    }

    public func findField(_ name: String, tableName: String) -> FieldDef? {
        if let table = tables[tableName] {
            if let field = table.fieldMap[name] {
                return field
            }
        } else if let tablesForFields: [String] = fieldToTableMap[name] {
            if tablesForFields.count == 1 {
                let tableDef = tables[tablesForFields[0]]
                return tableDef?.fieldMap[name]
            }
        }

        return nil
    }
}

public class Table {
    public var id = uniqueId.loadThenWrappingIncrement(ordering: .relaxed)
    let definition: TableDef
    var name: String { definition.name }
    var data = [[Any]]()
    var length: Int { data.count }
    init(_ definition: TableDef) {
        self.definition = definition
    }

    func addData(_ data: [Any]) {
        self.data.append(data)
    }

    func row(_ rowIndex: Int) -> [Any]? {
        if rowIndex < data.count {
            let rowData = data[rowIndex]
            return rowData
        }

        return nil
    }
}
