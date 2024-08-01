/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import CryptoKit
import Arrow

public enum FilterType: Int32 {
    case row = 0, col, colP, all
}

public protocol FilterBuilder {
    var context: QueryContext { get }
    var predicateNode: Relation.PredicateNode { get }
    func build(_ tdef: TableDef?, rowCount: UInt) -> Bool
    func process(_ myRows: RowAccessor,
                 appendFunc: @escaping (RowAccessor) -> Void)
}

public class FilterFactory {
    public private(set) static var type = FilterType.row
    static func setType(_ type: FilterType) {
        FilterFactory.type = type
    }

    static func load(_ predicate: Relation.PredicateNode?,
                     context: QueryContext,
                     _ typeOR: FilterType? = nil
    ) -> FilterBuilder {
        let selType = typeOR ?? type
        switch selType {
        case .all:
            return FilterBuilderAllRows(context)
        case .row:
            return FilterBuilderRow(predicate: predicate!, context: context)
        case .col:
            return FilterBuilderCol(predicate: predicate!, context: context)
        case .colP:
            if #available(iOS 13.0, *) {
                return FilterBuilderColParallel(predicate: predicate!, context: context)
            } else {
                return FilterBuilderCol(predicate: predicate!, context: context)
            }
        }
    }
}

public class FilterBuilderAllRows: FilterBuilder {
    public var predicateNode: Relation.PredicateNode
    public var context: QueryContext
    private var validateFunc: ((RowAccessor, (RowAccessor) -> Void) -> Bool)?
    public init(_ context: QueryContext) {
        self.context = context
        self.predicateNode = Relation.PredicateNode(.UNKNOWN, children: [])
    }

    public func build(_ tdef: TableDef?, rowCount: UInt) -> Bool {
        self.validateFunc = {(row, appendFunc) in
            appendFunc(row)
            return true
        }

        return true
    }

    public func process(_ myRows: RowAccessor,
                        appendFunc: @escaping (RowAccessor) -> Void) {
        for index in 0..<myRows.count {
            _ = myRows.to(rowIndex: index)
            _ = self.validateFunc!(myRows, appendFunc)
        }
    }
}

public class FilterBuilderRow: FilterBuilder {
    public let wrapper: PredicateBuilderBasic
    public var predicateNode: Relation.PredicateNode { wrapper.predicateNode }
    public var context: QueryContext
    private var validateFunc: ((RowAccessor, (RowAccessor) -> Void) -> Bool)?
    public init(predicate: Relation.PredicateNode, context: QueryContext) {
        self.context = context
        self.wrapper = PredicateBuilderBasic(predicate, context: context)
    }

    public func build(_ tdef: TableDef?, rowCount: UInt) -> Bool {
        let predFunc = self.wrapper.build(tdef, rowCount: rowCount)
        if predFunc != nil {
            self.validateFunc = {(row, appendFunc) in
                if predFunc!(row) {
                    appendFunc(row)
                    return true
                }

                return false
            }
        }
        return self.validateFunc != nil
    }

    public func process(_ myRows: RowAccessor,
                        appendFunc: @escaping (RowAccessor) -> Void) {
        if self.validateFunc != nil {
            for index in 0..<myRows.count {
                _ = myRows.to(rowIndex: index)
                _ = self.validateFunc!(myRows, appendFunc)
            }
        } else {
            for index in 0..<myRows.count {
                _ = myRows.to(rowIndex: index)
                appendFunc(myRows)
            }
        }
    }
}

@available(iOS 13.0, *)
public class FilterBuilderColParallel: FilterBuilder {
    public let wrapper: PredicateBuilderColParallel
    public var predicateNode: Relation.PredicateNode { wrapper.predicateNode }
    public var context: QueryContext
    private var validateFunc: ((RowAccessor, (RowAccessor) -> Void) async -> Void)?
    public init(predicate: Relation.PredicateNode, context: QueryContext) {
        self.context = context
        self.wrapper = PredicateBuilderColParallel(predicate, context: context)
    }

    public func build(_ tdef: TableDef?, rowCount: UInt) -> Bool {
        let predFunc = self.wrapper.build(tdef, rowCount: rowCount)
        if predFunc != nil {
            self.validateFunc = {(row, appendFunc) async in
                var result = [Bool](repeating: false, count: Int(rowCount))
                await predFunc!(row, &result)
                let localRow = row.clone()
                for idx in 0..<result.count where result[idx] == true {
                    _ = localRow.to(rowIndex: UInt(idx))
                    appendFunc(localRow)
                }
            }
        }
        return self.validateFunc != nil
    }

    public func process(_ myRows: RowAccessor,
                        appendFunc: @escaping (RowAccessor) -> Void) {
        if self.validateFunc != nil {
            let semaphore = DispatchSemaphore(value: 0)
            Task {
                await withTaskGroup(of: Void.self) { (_) -> [Void] in
                    await self.validateFunc!(myRows, appendFunc)
                    semaphore.signal()
                    return []
                }
            }
            semaphore.wait()
        } else {
            for index in 0..<myRows.count {
                _ = myRows.to(rowIndex: index)
                appendFunc(myRows)
            }
        }
    }
}

public class FilterBuilderCol: FilterBuilder {
    public let wrapper: PredicateBuilderCol
    public var predicateNode: Relation.PredicateNode { wrapper.predicateNode }
    public var context: QueryContext
    private var validateFunc: ((RowAccessor, (RowAccessor) -> Void) -> Void)?
    public init(predicate: Relation.PredicateNode, context: QueryContext) {
        self.context = context
        self.wrapper = PredicateBuilderCol(predicate, context: context)
    }

    public func build(_ tdef: TableDef?, rowCount: UInt) -> Bool {
        let predFunc = self.wrapper.build(tdef, rowCount: rowCount)
        if predFunc != nil {
            self.validateFunc = {(row, appendFunc) in
                var result = [Bool](repeating: false, count: Int(rowCount))
                predFunc!(row, &result)
                let localRow = row.clone()
                for idx in 0..<result.count where result[idx] == true {
                    _ = localRow.to(rowIndex: UInt(idx))
                    appendFunc(localRow)
                }
            }
        }
        return self.validateFunc != nil
    }

    public func process(_ myRows: RowAccessor,
                        appendFunc: @escaping (RowAccessor) -> Void) {
        if self.validateFunc != nil {
            self.validateFunc!(myRows, appendFunc)
        } else {
            for index in 0..<myRows.count {
                _ = myRows.to(rowIndex: index)
                appendFunc(myRows)
            }
        }
    }
}
