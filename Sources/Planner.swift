/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation

public class LogicalInnerJoin: InnerJoin {
    public private(set) var join: JoinDef
    public init(_ join: JoinDef) {
        self.join = join
    }
}

public class LogicalTableScan: TableScan {
    public private(set) var table: Relation.TableNode
    public init(_ table: Relation.TableNode) {
        self.table = table
    }
}

public class LogicalProject: Project {
    public private(set) var fields: [FieldDef]
    public init(_ fields: [FieldDef]) {
        self.fields = fields
    }
}

public class LogicalGroupBy: GroupBy {
    public private(set) var groupBy: Relation.GroupByNode
    public init(_ groupBy: Relation.GroupByNode) {
        self.groupBy = groupBy
    }
}

public class Planner {
    public static func make(relNode: Relation.RelNode) throws -> [PlanPart] {
        var nodes = [PlanPart]()
        var joinedTables = Set<Int>()
        if let selNode = relNode as? Relation.SelectNode {
            for table in selNode.tables {
                nodes.append(LogicalTableScan(table))
            }

            for join in selNode.joins {
                switch join.joinType {
                case .INNER, .LEFT, .RIGHT:
                    joinedTables.insert(join.left.id)
                    joinedTables.insert(join.left.id)
                    nodes.append(LogicalInnerJoin(JoinDef(join.joinType,
                                                          left: join.left,
                                                          right: join.right,
                                                          predicate: join.predicate)))
                default:
                    throw "Join type not supported: \(join.joinType)"
                }
            }

            if let groupByNode = selNode.groupBy {
                nodes.append(LogicalGroupBy(groupByNode))
            }

            if selNode.fields.count > 0 {
                var fieldDefs = [FieldDef]()
                for field in selNode.fields {
                    if let alias = field.alias {
                        fieldDefs.append(FieldAliasDef(field.definition, alias: alias))
                    } else {
                        fieldDefs.append(field.definition)
                    }
                }

                nodes.append(LogicalProject(fieldDefs))
            }
        }

        return nodes
    }
}
