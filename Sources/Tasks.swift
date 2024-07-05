/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Arrow

public protocol FilterBuilder {
    var context: QueryContext { get }
    var predicateNode: Relation.PredicateNode { get }
    func build(_ tdef: TableDef?) -> ((RowAccessor, (RowAccessor) -> Void) -> Bool)?;
    func process(_ myRows: RowAccessor,
                        appendFunc: @escaping (RowAccessor) -> Void,
                        validateFunc: ((RowAccessor, (RowAccessor) -> Void) -> Bool));
}

public class FilterBuilderRow: FilterBuilder {
    public let wrapper: PredicateBuilder
    public var predicateNode: Relation.PredicateNode { wrapper.predicateNode }
    public var context: QueryContext
    public init(predicate: Relation.PredicateNode, context: QueryContext) {
        self.context = context
        self.wrapper = PredicateBuilder(predicate, context: context)
    }

    public func build(_ tdef: TableDef?) -> ((RowAccessor, (RowAccessor) -> Void) -> Bool)? {
        let predFunc = self.wrapper.build(tdef)
        if predFunc != nil {
            return {(row, appendFunc) in
                if predFunc!(row) {
                    appendFunc(row)
                    return true
                }
                
                return false
            }
        }
        
        return nil
    }
    
    public func process(_ myRows: RowAccessor,
                        appendFunc: @escaping (RowAccessor) -> Void,
                        validateFunc: ((RowAccessor, (RowAccessor) -> Void) -> Bool)) {
        for index in 0..<myRows.count {
            _ = myRows.to(rowIndex: index)
            _ = validateFunc(myRows, appendFunc)
        }
    }
}

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
            if let validateFunc = filter.build(self.tview.tdef) {
                let appendFunc = {(row: RowAccessor) in self.tview.append(row.rowIndex)}
                for row in self {
                    _ = validateFunc(row, appendFunc)
                }
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
        let filter = FilterBuilderRow(predicate: joinDef.predicate as! Relation.PredicateNode, context: context)
        self.joinView = JoinHelper.innerJoin(filter, lhs: self.lhs, rhs: self.rhs, joinType: joinDef.type)
    }
}

public class ProjectTask {
    let projectBuilder: ProjectBuilder
    let context: QueryContext
    let filterBuilder: FilterBuilder?
    public private(set) var data: RecordBatch?
    let projectViews: [TableView]

    init(_ scan: Project, context: QueryContext, projectViews: [TableView],
         filterBuilder: FilterBuilder?) {
        self.filterBuilder = filterBuilder
        self.context = context
        self.projectViews = projectViews
        self.projectBuilder = ProjectBuilder(fields: scan.fields,
                                             context: context)
    }

    func load(_ rowData: RowAccessor) {
        self.projectBuilder.append(rowData)
    }

    public func execute() {
        let viewReader = ViewsReader(projectViews)
        if let filter = filterBuilder {
            if let validateFunc = filter.build(nil) {
                let appendFunc = {(row: RowAccessor) in self.load(row)}
                let filterRows = viewReader.rowAccessor.clone()
                filter.process(filterRows, appendFunc: appendFunc, validateFunc: validateFunc)
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

        data = self.projectBuilder.finish()
    }

    public func executeColCentric() {
        let viewReader = ViewsReader(projectViews)
        if let filter = filterBuilder {
            if let validateFunc = filter.build(nil) {
                var indicies = [UInt]()
                let appendFunc = {(row: RowAccessor) in indicies.append(row.rowIndex)}
                let filterRows = viewReader.rowAccessor.clone()
                filter.process(filterRows, appendFunc: appendFunc, validateFunc: validateFunc)

                self.projectBuilder.append(viewReader.rowAccessor, indicies: indicies)
            } else {
                self.projectBuilder.appendAll(viewReader.rowAccessor)
            }
        } else {
            self.projectBuilder.appendAll(viewReader.rowAccessor)
        }

        data = self.projectBuilder.finish()
    }

}
