/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Arrow
import Atomics

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
    public var id = uniqueId.loadThenWrappingIncrement(ordering: .relaxed)
    var rowAccessor: RowAccessor?
    var revision: UInt = 0
    var tableIndexes = [[UInt]]()
    var joinType: JoinType
    var visited = Set<UInt>()
    public var includeAll: Bool {return false}
    public var indicies = [UInt]()
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
    var rowAccessor: RowAccessor
    var includeAll: Bool {return false}
    public private(set) var count: UInt = 0

    init(_ views: [TableViewProtocol]) {
        self.views = views
        self.rowAccessor = ViewsRowAccessor(views: self.views)
        for view in self.views where view.count > self.count {
            count = view.count
        }
    }

    subscript(_ index: UInt) -> RowAccessor? {
        if index < self.count {
            if rowAccessor.to(rowIndex: index) {
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

public class GroupByView: TableViewProtocol, Sequence {
    public var fieldToColumn: [Int: Arrow.ArrowArrayHolder]
    let views: [TableViewProtocol]
    public var id = uniqueId.loadThenWrappingIncrement(ordering: .relaxed)
    var rowAccessor: RowAccessor?
    var visited = Set<UInt>()
    public var includeAll: Bool {return false}
    public var indicies = [UInt]()
    public private(set) var count: UInt
    public let tdef: TableDef

    init(_ views: [TableViewProtocol]) {
        self.views = views
        self.tdef = TableDef("GroupByView\(self.id)", fields: [FieldDef]())
        self.fieldToColumn = [Int: Arrow.ArrowArrayHolder]()
        self.count = 0
        for view in views {
            for fToC in view.fieldToColumn {
                fieldToColumn[fToC.key] = fToC.value
            }
            for field in view.tdef.fields {
                self.tdef.fields.append(field)
            }
        }
    }

    public func update(_ rowIndexes: [UInt]) {
        self.indicies = rowIndexes
        self.count = UInt(self.indicies.count)
    }

    public subscript(_ index: UInt) -> RowAccessor? {
        if rowAccessor == nil {
            self.rowAccessor = ViewsRowAccessor(views: views)
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
        init(_ view: GroupByView) {
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
