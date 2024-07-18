/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Arrow
import Atomics

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
