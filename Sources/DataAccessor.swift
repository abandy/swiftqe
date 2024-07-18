/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Arrow

public protocol RowAccessor {
    var rowIndex: UInt {get}
    var count: UInt {get}
    subscript(_ index: Int) -> Any? {get}
    func to(rowIndex: UInt) -> Bool
    func clone() -> RowAccessor
}

public class EmptyRA: RowAccessor {
    public var rowIndex: UInt { 0 }
    public var count: UInt { 0 }
    public func to(rowIndex: UInt) -> Bool { false}
    public static let empty = EmptyRA()
    public subscript(_ index: Int) -> Any? { return nil }
    public func clone() -> RowAccessor { return self }
}

public class TableRowAccessor: RowAccessor {
    public var rowIndex: UInt = 0
    public var count: UInt { UInt(row?.count ?? 0) }
    var row: [Any]?
    public var data: Any? { return row }
    let table: Table

    init(_ table: Table) {
        self.table = table
    }

    public func clone() -> RowAccessor { return TableRowAccessor(self.table) }

    public func next() -> Bool {
        if self.rowIndex < self.table.length {
            self.row = self.table.data[Int(self.rowIndex)]
            self.rowIndex += 1
            return true
        }

        return false
    }

    public func to(rowIndex: UInt) -> Bool {
        if self.rowIndex < self.table.length {
            self.rowIndex = rowIndex
            return true
        }

        return false
    }

    public subscript(_ index: Int) -> Any? {
        if row != nil && index < row!.count {
            return row![index]
        }

        return nil
    }
}

public class RBRowAccessor: RowAccessor {
    var nextIndex: UInt = 0
    public var rowIndex: UInt = 0
    public var count: UInt { rb.length }
    let rb: RecordBatch
    let tdef: TableDef
    private var fieldToColumn = [Int: ArrowArrayHolder]()

    init(_ view: TableView) {
        self.rb = view.rb
        self.tdef = view.tdef
        for fToC in view.fieldToColumn {
            fieldToColumn[fToC.key] = fToC.value
        }
    }

    private init(_ rb: RecordBatch, tdef: TableDef, ftoC: [Int: ArrowArrayHolder]) {
        self.rb = rb
        self.tdef = tdef
        self.fieldToColumn = ftoC
    }

    public func clone() -> RowAccessor {
        return RBRowAccessor(self.rb, tdef: self.tdef, ftoC: self.fieldToColumn)
    }

    public func next() -> Bool {
        if self.rowIndex < self.rb.length {
            self.rowIndex = self.nextIndex
            self.nextIndex += 1
            return true
        }

        return false
    }

    public func to(rowIndex: UInt) -> Bool {
        if rowIndex < rb.length {
            self.rowIndex = rowIndex
            return true
        }

        return false
    }

    public subscript(_ index: Int) -> Any? {
        if let column = fieldToColumn[index] {
            if rowIndex < rb.length {
                return column.array.asAny(self.rowIndex)
            }
        }

        return nil
    }
}

public struct FieldInfo {
    let holder: ArrowArrayHolder
    let index: Int
}

public class ViewsRowAccessor: RowAccessor {
    var nextIndex: UInt = 0
    public var rowIndex: UInt = 0
    public private(set) var count: UInt = 0
    private let views: [TableViewProtocol]
    private var fieldLookup = [Int: FieldInfo]()
    private var indicies: [[UInt]]?

    private init(_ views: [TableViewProtocol], indicies: [[UInt]], count: UInt, ftoC: [Int: FieldInfo]) {
        self.views = views
        self.count = count
        self.indicies = indicies
        self.fieldLookup = ftoC
    }

    public func clone() -> RowAccessor {
        return ViewsRowAccessor(self.views, indicies: self.indicies!,
                                count: self.count, ftoC: self.fieldLookup)
    }

    init(views: [TableViewProtocol], indicies: [[UInt]]? = nil) {
        self.views = views
        self.indicies = indicies ?? [[UInt]]()

        for index in 0..<views.count {
            let view = views[index]
            if view.count > self.count {
                count = view.count
            }

            if indicies == nil {
                self.indicies?.append(view.indicies)
            }

            for fToC in view.fieldToColumn {
                fieldLookup[fToC.key]  = FieldInfo(holder: fToC.value,
                                                   index: index)
            }
        }
    }

    public func next() -> Bool {
        if self.rowIndex < count {
            self.rowIndex = self.nextIndex
            self.nextIndex += 1
            return true
        }

        return false
    }

    public func to(rowIndex: UInt) -> Bool {
        if rowIndex < count {
            self.rowIndex = rowIndex
            return true
        }

        return false
    }

    public subscript(_ index: Int) -> Any? {
        if let fieldInfo = fieldLookup[index] {
            let colData = fieldInfo.holder.array
            if self.rowIndex < self.views[fieldInfo.index].count {
                if self.views[fieldInfo.index].includeAll {
                    return colData.asAny(self.rowIndex)
                }

                if let indicies = self.indicies {
                    let colRowIndex = indicies[fieldInfo.index]
                    return colData.asAny(colRowIndex[Int(self.rowIndex)])
                } else {
                    return colData.asAny(self.rowIndex)
                }
            }
        }

        return nil
    }
}

public class JoinsRowAccessor: RowAccessor {
    var nextIndex: UInt = 0
    public var rowIndex: UInt = 0
    public private(set) var count: UInt = 0
    private let views: JoinView
    private var fieldLookup = [Int: FieldInfo]()

    private init(_ views: JoinView, ftoC: [Int: FieldInfo]) {
        self.views = views
        self.count = views.count
        self.fieldLookup = ftoC
    }

    public func clone() -> RowAccessor {
        return JoinsRowAccessor(self.views, ftoC: self.fieldLookup)
    }

    init(views: JoinView) {
        self.views = views
        self.count = views.count
        for index in 0..<views.views.count {
            let view = views.views[index]
            for fToC in view.fieldToColumn {
                fieldLookup[fToC.key]  = FieldInfo(holder: fToC.value,
                                                   index: index)
            }
        }
    }

    public func next() -> Bool {
        if self.rowIndex < count {
            self.rowIndex = self.nextIndex
            self.nextIndex += 1
            return true
        }

        return false
    }

    public func to(rowIndex: UInt) -> Bool {
        if rowIndex < count {
            self.rowIndex = rowIndex
            return true
        }

        return false
    }

    public subscript(_ index: Int) -> Any? {
        if let fieldInfo = fieldLookup[index] {
            let colData = fieldInfo.holder.array
            let colRowIndex = self.views.tableIndexes[fieldInfo.index]
            return colData.asAny(colRowIndex[Int(self.rowIndex)])
        }

        return nil
    }
}
