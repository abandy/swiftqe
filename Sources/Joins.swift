/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Arrow

public class HashJoin<T: Hashable & Equatable> {
    class EntryData {
        var indicies = [UInt]()
        var values = [T?]()
    }

    let lhs: TableViewProtocol
    let rhs: TableViewProtocol
    let lField: FieldBasicDef
    let rField: FieldBasicDef
    var lookup = [T?: EntryData]()

    public init(lhs: TableViewProtocol, rhs: TableViewProtocol, lField: FieldBasicDef, rField: FieldBasicDef) {
        self.lhs = lhs
        self.rhs = rhs
        self.lField = lField
        self.rField = rField
    }

    public func scan(views: JoinView) {
        for rowIndex in 0..<self.rhs.count {
            let row = self.rhs[rowIndex]!
            if let data = row[rField.id] as? T {
                if let lookupEntry = lookup[data] {
                    let entryIndicies = lookupEntry.indicies
                    let entryValues = lookupEntry.values
                    for innerIndex in 0..<entryIndicies.count where entryValues[innerIndex] == data {
                        views.append([entryIndicies[innerIndex], row.rowIndex])
                    }
                }
            }
        }
    }

    public func build() {
        for rowIndex in 0..<self.lhs.count {
            let row = self.lhs[rowIndex]!
            if let data = row[lField.id] as? T {
                if lookup[data] == nil {
                    lookup[data] = EntryData()
                }

                lookup[data]!.indicies.append(row.rowIndex)
                lookup[data]!.values.append(data)
            }
        }
    }
}

public class NestedJoin {
    let lhs: TableViewProtocol
    let rhs: TableViewProtocol
    let filter: FilterBuilder

    public init(lhs: TableViewProtocol, rhs: TableViewProtocol, filter: FilterBuilder) {
        self.lhs = lhs
        self.rhs = rhs
        self.filter = filter
    }

    public func scan(views: JoinView) {
        _ = filter.build(nil, rowCount: self.rhs.count)
        let parameters = filter.context.parameter
        var overrides = [Int: FieldDef]()

        for field in lhs.tdef.fields where parameters[field.id] != nil {
            overrides[field.id] = field
        }

        for lindex in 0..<self.lhs.count {
            let lrow = self.lhs[lindex]!
            for override in overrides {
                if let basicField = override.value as? FieldBasicDef {
                    let output = lrow[basicField.id]
                    parameters[override.key]!.getValue = {_ in output}
                }
            }

            var appendRowIndex: UInt = 0
            let appendFunc = {(_: RowAccessor) in
                views.append([lrow.rowIndex, appendRowIndex])}
            if self.rhs.count > 0 {
                let rrow = self.rhs[0]!
                appendRowIndex = rrow.rowIndex
                filter.process(rrow, appendFunc: appendFunc)
            }
        }
    }
}

public class JoinHelper {
    public static func innerJoin(_ filter: FilterBuilder,
                                 lhs: TableViewProtocol,
                                 rhs: TableViewProtocol,
                                 joinType: JoinType) -> JoinView {
        let predicate = filter.predicateNode
        let views = JoinView([lhs, rhs], joinType: joinType)
        if let col1 = predicate.children[0] as? Relation.FieldBasicNode,
            let col2 = predicate.children[1] as? Relation.FieldBasicNode {
            if predicate.op == Predicate.EQ {
                let join: HashJoin<Int32> = HashJoin(lhs: lhs,
                                                     rhs: rhs,
                                                     lField: col1.basicField,
                                                     rField: col2.basicField)
                join.build()
                join.scan(views: views)
                views.finish()
                return views
            } else {
                let join: NestedJoin = NestedJoin(lhs: lhs, rhs: rhs, filter: filter)
                join.scan(views: views)
                views.finish()
                return views
            }
        } else {
            let join: NestedJoin = NestedJoin(lhs: lhs, rhs: rhs, filter: filter)
            join.scan(views: views)
            views.finish()
            return views
        }
    }
}
