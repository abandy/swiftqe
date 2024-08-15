/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Arrow

#if canImport(CryptoKit)
import CryptoKit
#elseif canImport(Crypto)
import Crypto
#endif

import CommonCrypto



public class RBTableScanTask: Sequence {
    public let tview: TableView
    let filterBuilder: FilterBuilder?
    init(_ tview: TableView, filterBuilder: FilterBuilder?) {
        self.tview = tview
        self.filterBuilder = filterBuilder
    }

    public func makeIterator() -> RBTableScanProcessorIterator {
        return RBTableScanProcessorIterator(self.tview)
    }

    public struct RBTableScanProcessorIterator: IteratorProtocol {
        let rowAccessor: RBRowAccessor
        init(_ tview: TableView) {
            self.rowAccessor = RBRowAccessor(tview)
        }

        public func next() -> RowAccessor? {
            if self.rowAccessor.next() {
                return self.rowAccessor
            }

            return nil
        }
    }

    public func execute() {
        if let filter = self.filterBuilder {
            if filter.build(self.tview.tdef, rowCount: self.tview.count) {
                let appendFunc = {(row: RowAccessor) in self.tview.append(row.rowIndex)}
                filter.process(self.tview.rowAccessor!, appendFunc: appendFunc)
            } else {
                self.tview.includeAll = true
            }
        } else {
            self.tview.includeAll = true
        }
    }
}

public class RBInnerJoinTask {
    let ij: InnerJoin
    let lhs: TableViewProtocol
    let rhs: TableViewProtocol
    let context: QueryContext
    public fileprivate(set) var joinView: JoinView?
    init(_ ij: InnerJoin,
         lhs: TableViewProtocol,
         rhs: TableViewProtocol,
         context: QueryContext) {
        self.ij = ij
        self.lhs = lhs
        self.rhs = rhs
        self.context = context
    }

    public func execute() {
        let joinDef = self.ij.join
        let filter = FilterFactory.load(joinDef.predicate as? Relation.PredicateNode, context: context)
        self.joinView = Joins.innerJoin(filter, lhs: self.lhs, rhs: self.rhs, joinType: joinDef.type)
    }
}

public class ProjectTask {
    let projectBuilder: ProjectBuilder
    let context: QueryContext
    let filterBuilder: FilterBuilder?
    public private(set) var data: RecordBatch?

    init(_ fields: [FieldDef], context: QueryContext, filterBuilder: FilterBuilder?) {
        self.filterBuilder = filterBuilder
        self.context = context
        self.projectBuilder = ProjectBuilder(fields: fields,
                                             context: context)
    }

    func load(_ rowData: RowAccessor) {
        self.projectBuilder.append(rowData)
    }

    public func execute(projectViews: [TableViewProtocol]) {
        let viewReader = ViewsReader(projectViews)
        if let filter = filterBuilder {
            if filter.build(nil, rowCount: viewReader.count) {
                let appendFunc = {(row: RowAccessor) in self.load(row)}
                let filterRows = viewReader.rowAccessor.clone()
                filter.process(filterRows, appendFunc: appendFunc)
            } else {
                for row in viewReader {
                    self.load(row)
                }
            }
        } else {
            for row in viewReader {
                self.load(row)
            }
        }
    }

    public func executeColCentric(projectViews: [TableViewProtocol]) {
        let viewReader = ViewsReader(projectViews)
        if let filter = filterBuilder {
            if filter.build(nil, rowCount: viewReader.count) {
                var indicies = [UInt]()
                let appendFunc = {(row: RowAccessor) in indicies.append(row.rowIndex)}
                let filterRows = viewReader.rowAccessor.clone()
                filter.process(filterRows, appendFunc: appendFunc)

                self.projectBuilder.append(viewReader.rowAccessor, indicies: indicies)
            } else {
                self.projectBuilder.appendAll(viewReader.rowAccessor)
            }
        } else {
            self.projectBuilder.appendAll(viewReader.rowAccessor)
        }

    }

    public func finishRows() {
        self.projectBuilder.finishRows()
    }

    public func finish() {
        self.data = self.projectBuilder.finish()
    }
}

public class GroupByTask {
    var scan: GroupBy
    var context: QueryContext
    var projectViews: [TableViewProtocol]
    var filterBuilder: FilterBuilder
    init(_ scan: GroupBy,
         context: QueryContext,
         projectViews: [TableViewProtocol],
         filterBuilder: FilterBuilder?) {
        self.scan = scan
        self.context = context
        self.projectViews = projectViews
        self.filterBuilder = filterBuilder == nil
            ? FilterFactory.load(nil, context: context, FilterType.all)
            : filterBuilder!
    }

    public func execute() -> [[TableViewProtocol]] {
        var views = [String: [UInt]]()
        let viewReader = ViewsReader(projectViews)
        if self.filterBuilder.build(nil, rowCount: viewReader.count) {
            let appendFunc = {(row: RowAccessor) in
                let hashValue = self.simpleHash(row)
                if views[hashValue] == nil {
                    views[hashValue] = [UInt]()
                }

                views[hashValue]?.append(row.rowIndex)
            }

            let filterRow = viewReader.rowAccessor.clone()
            self.filterBuilder.process(filterRow, appendFunc: appendFunc)
        }

        var retTables = [[TableViewProtocol]]()
        for indices in views.values {
            let groupByView = GroupByView(projectViews)
            groupByView.update(indices)
            retTables.append([groupByView])
        }

        return retTables
    }

    public func simpleHash( // swiftlint:disable:this cyclomatic_complexity
        _ row: RowAccessor
    ) -> String {
        var data = Data()
        let fields = scan.groupBy.fields
        for field in fields {
            switch field.type {
            case .BOOLEAN:
                let value: Bool? = field.getValue(data: row, context: self.context)
                appendNil(value, data: &data)
                let val = value == nil ? false : value!
                data.append(val ? 1 : 0)
            case .INT8:
                appendInt(field.getValue(data: row, context: self.context) as Int8?, data: &data, field: field)
            case .INT16:
                appendInt(field.getValue(data: row, context: self.context) as Int16?, data: &data, field: field)
            case .INT32:
                appendInt(field.getValue(data: row, context: self.context) as Int32?, data: &data, field: field)
            case .INT64:
                appendInt(field.getValue(data: row, context: self.context) as Int64?, data: &data, field: field)
            case .UINT8:
                appendInt(field.getValue(data: row, context: self.context) as UInt8?, data: &data, field: field)
            case .UINT16:
                appendInt(field.getValue(data: row, context: self.context) as UInt16?, data: &data, field: field)
            case .UINT32:
                appendInt(field.getValue(data: row, context: self.context) as UInt32?, data: &data, field: field)
            case .UINT64:
                appendInt(field.getValue(data: row, context: self.context) as UInt64?, data: &data, field: field)
            case .DOUBLE:
                appendFloat(field.getValue(data: row, context: self.context) as Double?, data: &data, field: field)
            case .FLOAT:
                appendFloat(field.getValue(data: row, context: self.context) as Float?, data: &data, field: field)
            case .VARCHAR:
                let value = field.getValue(data: row, context: self.context) as String?
                if let val = value { data.append(val.data(using: .utf8)!)}
            case .DATE:
                let value = field.getValue(data: row, context: self.context) as Date?
                if let val = value {
                    appendInt(Int(val.timeIntervalSince1970), data: &data, field: field)
                }
            }
        }
        
        guard #unavailable(tvOS 13.0) else {
            return md5Hash(data: data)
        }
        
        guard #unavailable(iOS 13.0) else {
            return md5Hash(data: data)
        }
        
#if canImport(CryptoKit)
        let digest = CryptoKit.Insecure.MD5.hash(data: data)
        return digest.map {
            String(format: "%02hhx", $0)
        }.joined()
#elseif canImport(Crypto)
        let digest = Crypto.Insecure.MD5.hash(data: data)
        return digest.map {
            String(format: "%02hhx", $0)
        }.joined()
#else
        return md5Hash(data: data)
#endif
    }

    private func md5Hash (data: Data) -> String {
        var digest = [UInt8](repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))
        _ = data.withUnsafeBytes {
            CC_MD5($0.baseAddress, UInt32(data.count), &digest)
        }
        var md5String = ""
        for byte in digest {
            md5String += String(format: "%02x", UInt8(byte))
        }
        return md5String
    }

    private func appendNil(_ rowData: Any?, data: inout Data) {
        let nilByte = rowData == nil ? 0 : 1
        withUnsafeBytes(of: nilByte) { data.append(contentsOf: $0) }
    }

    private func appendInt<T: FixedWidthInteger>(_ rowData: T?,
                                                 data: inout Data,
                                                 field: Relation.FieldNode) {
        appendNil(rowData, data: &data)
        let val = rowData == nil ? 0 : rowData!
        withUnsafeBytes(of: val) { data.append(contentsOf: $0) }
    }

    private func appendFloat<T: FloatingPoint>(_ rowData: T?,
                                               data: inout Data,
                                               field: Relation.FieldNode) {
        appendNil(rowData, data: &data)
        let val = rowData == nil ? T(0) : rowData!
        withUnsafeBytes(of: val) { data.append(contentsOf: $0) }
    }
}

public class OrderByTask {
    var scan: OrderBy
    var context: QueryContext
    var projectViews: [TableViewProtocol]
    public init(_ scan: OrderBy,
                context: QueryContext,
                projectViews: [TableViewProtocol]) {
        self.scan = scan
        self.context = context
        self.projectViews = projectViews
    }
}
