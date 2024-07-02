/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Arrow
import Atomics

let uniqueId: UnsafeAtomic<Int> = .create(0)

public protocol FieldDef {
    var id: Int {get}
    var name: String {get}
    var type: SqlType {get}
    var tableDef: TableDef? {get}
    func setTable(_ tableDef: TableDef)
    func load(_ data: RowAccessor, appendFunc: ((Any?) -> Void))
    func finish(appendFunc: ((Any?) -> Void))
}

public class FieldAliasDef: FieldDef {
    public var id = uniqueId.loadThenWrappingIncrement(ordering: .relaxed)
    var child: any FieldDef
    var alias: String
    public var name: String { child.name }
    public var type: SqlType { child.type }
    public var tableDef: TableDef? { child.tableDef }
    
    public init(_ child: any FieldDef, alias: String) {
        self.child = child
        self.alias = alias
    }
    
    public func setTable(_ tableDef: TableDef) {
        child.setTable(tableDef)
    }
    
    public func load(_ data: RowAccessor, appendFunc: ((Any?) -> Void)) {
        child.load(data, appendFunc: appendFunc)
    }
    
    public func finish(appendFunc: ((Any?) -> Void)) {
        child.finish(appendFunc: appendFunc)
    }
}

public class FieldBasicDef: FieldDef {
    public var id = uniqueId.loadThenWrappingIncrement(ordering: .relaxed)
    var dataOffset: Int
    public private(set) var name: String
    public private(set) var type: SqlType
    public private(set) var sourceName: String
    public private(set) var tableDef: TableDef?
    public init(_ name: String, sourceName: String, type: SqlType, dataOffset: Int) {
        self.name = name
        self.sourceName = sourceName
        self.dataOffset = dataOffset
        self.type = type
    }

    public func setTable(_ tableDef: TableDef) {
        self.tableDef = tableDef
    }

    public func load(_ data: RowAccessor, appendFunc: ((Any?) -> Void)) {
        appendFunc(data[self.id])
    }
    
    public func finish(appendFunc: ((Any?) -> Void)) {}
}

public class FieldWindowFuncDef: FieldComplexDef {
    public var winFunc: WindowFunc
    public init(_ name: String, winFunc: WindowFunc, expression: Relation.RelNodeWithType) {
        self.winFunc = winFunc
        super.init(name, sqlType: winFunc.funcSqlType, expression: expression)
    }
    
    public override func load(_ data: RowAccessor, appendFunc: ((Any?) -> Void)) {
        self.winFunc.load(self.calcFunc!(data), appendFunc: appendFunc)
    }
    
    public override func finish(appendFunc: ((Any?) -> Void)) {
        self.winFunc.finish(appendFunc: appendFunc)
    }
}

public class FieldComplexDef: FieldDef {
    public var id = uniqueId.loadThenWrappingIncrement(ordering: .relaxed)
    public var expression: Relation.RelNodeWithType
    public var calcFunc: ((RowAccessor) -> Any?)?
    public private(set) var name: String
    public private(set) var type: SqlType
    public private(set) var tableDef: TableDef?
    public convenience init(_ name: String, expression: Relation.RelNodeWithType) {
        self.init(name, sqlType: expression.type, expression: expression)
    }

    public init(_ name: String, sqlType: SqlType, expression: Relation.RelNodeWithType) {
        self.name = name
        self.expression = expression
        self.type = sqlType
    }

    public func setTable(_ tableDef: TableDef) {
        self.tableDef = tableDef
    }

    public func load(_ data: RowAccessor, appendFunc: ((Any?) -> Void)) {
        appendFunc(self.calcFunc!(data))
    }
    
    public func finish(appendFunc: ((Any?) -> Void)) {}
}

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

public class JoinDef {
    public var id = uniqueId.loadThenWrappingIncrement(ordering: .relaxed)
    public var left: TableDef
    public var right: TableDef
    public var predicate: Relation.RelNodeWithType
    public var type: JoinType
    public init(_ type: JoinType, left: TableDef, right: TableDef, predicate: Relation.RelNodeWithType) {
        self.type = type
        self.left = left
        self.right = right
        self.predicate = predicate
    }
}

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

public protocol TableViewProtocol {
    var id: Int {get}
    var tdef: TableDef {get}
    var count: UInt {get}
    subscript(_ index: UInt) -> RowAccessor? {get}
    func update(_ rowIndexes: [UInt])
    var fieldToColumn: [Int: ArrowArrayHolder] {get}
    var indicies: [UInt] {get}
    var includeAll: Bool {get}
}

public class TableView: TableViewProtocol, Sequence {
    let rb: RecordBatch
    public var includeAll: Bool = true
    public var id = uniqueId.loadThenWrappingIncrement(ordering: .relaxed)
    public let tdef: TableDef
    public var rowAccessor: RowAccessor?
    public var indicies = [UInt]()
    public var fieldToColumn: [Int: Arrow.ArrowArrayHolder]
    public var count: UInt {
        if includeAll {
            return rb.length
        }

        return UInt(indicies.count)
    }

    init(_ rb: RecordBatch, tdef: TableDef) {
        self.rb = rb
        self.tdef = tdef
        self.includeAll = false
        self.fieldToColumn = [Int: Arrow.ArrowArrayHolder]()
        for index in 0..<tdef.fields.count {
            self.fieldToColumn[tdef.fields[index].id] = rb.column(index)
        }

        self.rowAccessor = RBRowAccessor(self)
    }

    func append(_ rowIndex: UInt) {
        indicies.append(rowIndex)
    }

    public func update(_ rowIndexes: [UInt]) {
        self.includeAll = false
        self.indicies = rowIndexes
    }

    public subscript(_ index: UInt) -> RowAccessor? {
        if self.includeAll {
            if rowAccessor!.to(rowIndex: index) {
                return rowAccessor
            }
        } else if index < indicies.count {
            if rowAccessor!.to(rowIndex: indicies[Int(index)]) {
                return rowAccessor
            }
        }

        return nil
    }

    public func makeIterator() -> TableViewProcessorIterator {
        return TableViewProcessorIterator(self)
    }

    public class TableViewProcessorIterator: IteratorProtocol {
        let view: TableView
        var rowIndex: UInt
        init(_ view: TableView) {
            self.view = view
            self.rowIndex = 0
        }

        public func next() -> RowAccessor? {
            var row: RowAccessor?
            if self.rowIndex < view.count {
                row = view[self.rowIndex]
                self.rowIndex += 1
            }

            return row
        }
    }
}

public class JoinView: TableViewProtocol, Sequence {
    public var fieldToColumn: [Int: Arrow.ArrowArrayHolder]
    let views: [TableViewProtocol]
    var rowAccessor: RowAccessor?
    var revision: UInt = 0
    var tableIndexes = [[UInt]]()
    var joinType: JoinType
    var visited = Set<UInt>()
    public var includeAll: Bool {return false}
    public var indicies = [UInt]()
    public var id = uniqueId.loadThenWrappingIncrement(ordering: .relaxed)
    public private(set) var count: UInt
    public let tdef: TableDef

    init(_ views: [TableViewProtocol], joinType: JoinType) {
        self.views = views
        self.tdef = TableDef("JoinView\(self.id)", fields: [FieldDef]())
        self.fieldToColumn = [Int: Arrow.ArrowArrayHolder]()
        self.count = 0
        self.joinType = joinType
        for view in views {
            self.tableIndexes.append([UInt]())
            for fToC in view.fieldToColumn {
                fieldToColumn[fToC.key] = fToC.value
            }
            for field in view.tdef.fields {
                self.tdef.fields.append(field)
            }
        }
    }

    public func append(_ rowIndexes: [UInt]) {
        for index in 0..<rowIndexes.count {
            self.tableIndexes[index].append(rowIndexes[index])
        }
    }

    func finish() {
        if joinType == .LEFT {
            fillRemaining(0)
        } else if joinType == .RIGHT {
            fillRemaining(1)
        }

        for index in 0..<self.tableIndexes.count {
            self.views[index].update(tableIndexes[index])
        }
    }

    private func fillRemaining(_ indexToSort: Int) {
        let sortedIndexes = Array(Set(tableIndexes[indexToSort])).sorted()
        var sortedIndex = 0
        for index in 0..<self.views[indexToSort].count {
            if sortedIndex < sortedIndexes.count &&
                sortedIndexes[sortedIndex] == index {
                sortedIndex += 1
            } else {
                self.tableIndexes[indexToSort].append(index)
            }
        }
    }

    public func update(_ rowIndexes: [UInt]) {
        self.indicies = rowIndexes
        self.count = UInt(self.indicies.count)
    }

    public subscript(_ index: UInt) -> RowAccessor? {
        if rowAccessor == nil {
            self.rowAccessor = ViewsRowAccessor(views: views, indicies: self.tableIndexes)
        }

        if rowAccessor!.to(rowIndex: index) {
            return rowAccessor
        }

        return nil
    }

    public func makeIterator() -> TableViewProcessorIterator {
        return TableViewProcessorIterator(self)
    }

    public class TableViewProcessorIterator: IteratorProtocol {
        let reader: ViewsReader
        var rowIndex: UInt
        init(_ view: JoinView) {
            self.reader = ViewsReader(view.views)
            self.rowIndex = 0
        }

        public func next() -> RowAccessor? {
            var row: RowAccessor?
            if self.rowIndex < reader.count {
                row = reader[self.rowIndex]
                self.rowIndex += 1
            }

            return row
        }
    }
}

public class ViewsReader: Sequence {
    public var id = uniqueId.loadThenWrappingIncrement(ordering: .relaxed)
    let views: [TableViewProtocol]
    var rowAccessor: RowAccessor?
    var includeAll: Bool {return false}
    public private(set) var count: UInt = 0

    init(_ views: [TableViewProtocol]) {
        self.views = views
        for view in self.views where view.count > self.count {
            count = view.count
        }
    }

    subscript(_ index: UInt) -> RowAccessor? {
        if self.rowAccessor == nil {
            self.rowAccessor = ViewsRowAccessor(views: self.views)
        }

        if index < self.count {
            if rowAccessor!.to(rowIndex: index) {
                return rowAccessor
            }
        }

        return nil
    }

    public func makeIterator() -> TablesSubsetProcessorIterator {
        return TablesSubsetProcessorIterator(self)
    }

    public class TablesSubsetProcessorIterator: IteratorProtocol {
        let reader: ViewsReader
        var rowIndex: UInt
        init(_ reader: ViewsReader) {
            self.reader = reader
            self.rowIndex = 0
        }

        public func next() -> RowAccessor? {
            var row: RowAccessor?
            if self.rowIndex < reader.count {
                row = reader[self.rowIndex]
                self.rowIndex += 1
            }

            return row
        }
    }
}
// swiftlint:disable:this file_length
