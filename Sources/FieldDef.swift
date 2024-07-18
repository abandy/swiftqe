/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Arrow

public protocol FieldDef {
    var id: Int {get}
    var name: String {get}
    var type: SqlType {get}
    var tableDef: TableDef? {get}
    func setTable(_ tableDef: TableDef)
    func load(_ data: RowAccessor, appendFunc: ((Any?) -> Void))
    func finish(appendFunc: ((Any?) -> Void))
    func reset()
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

    public func reset() {
        child.reset()
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

    public func reset() {}

    public func setTable(_ tableDef: TableDef) {
        self.tableDef = tableDef
    }

    public func load(_ data: RowAccessor, appendFunc: ((Any?) -> Void)) {
        appendFunc(data[self.id])
    }

    public func finish(appendFunc: ((Any?) -> Void)) {}
}

public class FieldGroupByDef: FieldDef {
    public var id: Int {fieldDef.id}
    public var name: String {fieldDef.name}
    public var type: SqlType {fieldDef.type}
    public var tableDef: TableDef? {fieldDef.tableDef}
    var fieldDef: FieldDef
    var dataSet = false
    public init(fieldDef: FieldDef) {
        self.fieldDef = fieldDef
    }

    public func reset() {
        dataSet = false
    }

    public func setTable(_ tableDef: TableDef) {
        self.fieldDef.setTable(tableDef)
    }

    public func load(_ data: RowAccessor, appendFunc: ((Any?) -> Void)) {
        if !dataSet {
            appendFunc(data[self.id])
            dataSet = true
        }
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

    public override func reset() {
        self.winFunc.reset()
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

    public func reset() {}

    public func load(_ data: RowAccessor, appendFunc: ((Any?) -> Void)) {
        appendFunc(self.calcFunc!(data))
    }

    public func finish(appendFunc: ((Any?) -> Void)) {}
}
