/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Arrow
import Atomics

let uniqueId: UnsafeAtomic<Int> = .create(0)

public enum EngineError: Error {
    case generic(String)
    case sqlParse(errors: [SqlBuilderError])
}

public class QueryEngineConfig {
    var filterType: FilterType = .row
    var failOnSqlParseError: Bool = false
}

public class QueryEngine {
    let schema = Schema()
    var catalog = [String: RecordBatch]()
    var context = QueryContext()

    public func add(_ rb: RecordBatch, name: String) {
        schema.add(TableDef.from(rb, tableName: name))
        catalog[name] = rb
    }

    public static func run<T: Encodable, U: Decodable>(
        _ query: String,
        inputName: String,
        input: [T],
        failOnSqlParseError: Bool = false) throws -> [U]? {
        let engine = QueryEngine()
        engine.add(try ArrowEncoder.encode(input)!, name: inputName)
        let rb = try engine.run(query, failOnSqlParseError: true)!
        let decoder = ArrowDecoder(rb)
        return try decoder.decode(U.self)
    }

    public func run(_ query: String,
                    failOnSqlParseError: Bool = false) throws -> RecordBatch? {
        let config = QueryEngineConfig()
        config.failOnSqlParseError = failOnSqlParseError
        return try run(query, config: config)
    }

    public func run(_ query: String,  // swiftlint:disable:this cyclomatic_complexity function_body_length
                    config: QueryEngineConfig) throws -> RecordBatch? {
        FilterFactory.setType(config.filterType)
        if let sqlNode = try MySqlNodeBuilder.build(sql: query) {
            if !sqlNode.sqlErrors.isEmpty && config.failOnSqlParseError {
                throw EngineError.sqlParse(errors: sqlNode.sqlErrors)
            }

            let relation = try Relation.convertQuery(sqlNode, schema: schema)
            guard let selectNode = relation as? Relation.SelectNode else {
                throw EngineError.generic("Expected SelectNode type but found: \(Swift.type(of: relation))")
            }

            var filter: FilterBuilder?
            if let predicateNode = selectNode.predicate {
                filter = FilterFactory.load(predicateNode, context: context)
            }

            let tasks = try Planner.make(relNode: relation!)
            var views = [Int: TableViewProtocol]()
            var projectViews = [TableViewProtocol]()
            var groupByViews: [[TableViewProtocol]]?
            for task in tasks {
                switch task.type {
                case .INNERJOIN:
                    let ij = task as! InnerJoin
                    let lhs = views[ij.join.left.id]!
                    let rhs = views[ij.join.right.id]!
                    var task: RBInnerJoinTask
                    task = RBInnerJoinTask(ij, lhs: lhs, rhs: rhs, context: context)
                    task.execute()
                    views[ij.join.left.id] = task.joinView
                    views[ij.join.right.id] = task.joinView
                case .TABLESCAN:
                    let ts = task as! TableScan
                    let rb = catalog[ts.table.name]!
                    var tableFilter: FilterBuilder?
                    let tablePred = selectNode.tablePredicates[ts.table.name]
                    if tablePred != nil {
                        tableFilter = FilterFactory.load(tablePred!, context: context)
                    }

                    let scanTask = RBTableScanTask(TableView(rb, tdef: ts.table.tableDef),
                                                   filterBuilder: tableFilter)
                    scanTask.execute()
                    views[ts.table.tableDef.id] = scanTask.tview
                    projectViews.append(scanTask.tview)
                case .PROJECT:
                    var fields = (task as! Project).fields
                    if groupByViews != nil {
                        for index in 0..<fields.count where fields[index] is FieldBasicDef {
                            fields[index] = FieldGroupByDef(fieldDef: fields[index])
                        }
                    }

                    let project = ProjectTask(fields,
                                              context: context,
                                              filterBuilder: groupByViews == nil ? filter: nil)
                    if let fieldError = project.validate() {
                        throw fieldError
                    }

                    if let gbViews = groupByViews {
                        for view in gbViews {
                            project.execute(projectViews: view)
                            project.finishRows()
                            for index in 0..<fields.count {
                                fields[index].reset()
                            }
                        }
                    } else {
                        project.executeColCentric(projectViews: projectViews)
                        project.finishRows()
                    }

                    project.finish()
                    return project.data
                case .GROUPBY:
                    let groupBy = GroupByTask(task as! GroupBy,
                                              context: context,
                                              projectViews: projectViews,
                                              filterBuilder: filter)
                    groupByViews = groupBy.execute()
                case .ORDERBY:
                    throw EngineError.generic("Currently not implemented")
                }
            }
        } else {
            throw EngineError.generic("Failed to parse SQL statement")
        }

        return nil
    }
}
