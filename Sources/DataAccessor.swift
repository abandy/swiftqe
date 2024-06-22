/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Arrow

public class TableRowAccessor: RowAccessor {
    public var rowIndex: UInt = 0
    public var count: UInt { UInt(row?.count ?? 0) }
    var row: [Any]?
    public var data: Any? { return row }
    let table: Table

    init(_ table: Table) {
        self.table = table
    }

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

    public class TableRowData: RowAccessor {
        public var rowIndex: UInt = 0
        public var count: UInt { UInt(row.count) }

        let row: [Any]
        init(_ row: [Any], rowIndex: UInt) {
            self.row = row
            self.rowIndex = rowIndex
        }

        public func to(rowIndex: UInt) -> Bool {return false}

        public subscript(_ index: Int) -> Any? {
            if index < row.count {
                return row[index]
            }

            return nil
        }

        public func copy() -> RowAccessor {
            return self
        }
    }

    public func copy() -> RowAccessor {
        return TableRowData(row!, rowIndex: rowIndex - 1)
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
            if let colData = column.array as? AnyArray {
                if rowIndex < rb.length {
                    return colData.asAny(self.rowIndex)
                }
            }
        }

        return nil
    }

    public class RowData: RowAccessor {
        public var rowIndex: UInt = 0
        public var count: UInt { 1 }
        let lookup: [Int: ArrowArrayHolder]
        init(_ lookup: [Int: ArrowArrayHolder], rowIndex: UInt) {
            self.lookup = lookup
            self.rowIndex = rowIndex

        }

        public func to(rowIndex: UInt) -> Bool {return false}

        public subscript(_ index: Int) -> Any? {
            if let colData = lookup[index]!.array as? AnyArray {
                return colData.asAny(UInt(self.rowIndex))
            }

            return nil
        }
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
            let colData = fieldInfo.holder.array as! AnyArray
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

    public class RowData: RowAccessor {
        public var rowIndex: UInt
        public var count: UInt { 1 }
        public let columnCount: UInt
        private let fieldLookup: [Int: FieldInfo]

        init(_ fieldLookup: [Int: FieldInfo], rowIndex: UInt) {
            self.fieldLookup = fieldLookup
            self.rowIndex = rowIndex
            columnCount = UInt(self.fieldLookup.count)
        }

        public func to(rowIndex: UInt) -> Bool {return false}

        public subscript(_ index: Int) -> Any? {
            if let fieldInfo = fieldLookup[index] {
                let colData = fieldInfo.holder.array as! AnyArray
                return colData.asAny(self.rowIndex)
            }

            return nil
        }
    }
}

public class JoinsRowAccessor: RowAccessor {
    var nextIndex: UInt = 0
    public var rowIndex: UInt = 0
    public private(set) var count: UInt = 0
    private let views: JoinView
    private var fieldLookup = [Int: FieldInfo]()

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
            let colData = fieldInfo.holder.array as! AnyArray
            let colRowIndex = self.views.tableIndexes[fieldInfo.index]
            return colData.asAny(colRowIndex[Int(self.rowIndex)])
        }

        return nil
    }

    public class RowData: RowAccessor {
        public var rowIndex: UInt
        public var count: UInt { 1 }
        public let columnCount: UInt
        private let fieldLookup: [Int: FieldInfo]

        init(_ fieldLookup: [Int: FieldInfo], rowIndex: UInt) {
            self.fieldLookup = fieldLookup
            self.rowIndex = rowIndex
            columnCount = UInt(self.fieldLookup.count)
        }

        public func to(rowIndex: UInt) -> Bool {return false}

        public subscript(_ index: Int) -> Any? {
            if let fieldInfo = fieldLookup[index] {
                let colData = fieldInfo.holder.array as! AnyArray
                return colData.asAny(self.rowIndex)
            }

            return nil
        }
    }
}
