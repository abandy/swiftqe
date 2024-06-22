/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation

public enum LogicalType {
    case TABLESCAN, PROJECT, INNERJOIN
}

public protocol PlanPart {
    var type: LogicalType {get}
}

public protocol InnerJoin: PlanPart {
    var join: JoinDef {get}
}

public protocol TableScan: PlanPart {
    var table: Relation.TableNode {get}
}

public protocol Project: PlanPart {
    var fields: [FieldDef] {get}
}

extension InnerJoin {
    public var type: LogicalType { return .INNERJOIN }
}

extension TableScan {
    public var type: LogicalType { return .TABLESCAN }
}

extension Project {
    public var type: LogicalType { return .PROJECT }
}
