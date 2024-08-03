/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import Arrow

public class ProjectBuilder {
    private class ProjectFieldBuilder {
        let field: FieldDef
        private(set) var name: String
        let context: QueryContext
        public private(set) var appendFunc: ((Any?) -> Void)?
        public private(set) var finish: (() throws -> ArrowArrayHolder)?
        init( // swiftlint:disable:this cyclomatic_complexity
            _ field: FieldDef, context: QueryContext) throws {
            self.context = context
            if let aliasField = field as? FieldAliasDef {
                self.name = aliasField.alias
                self.field = aliasField.child
            } else {
                self.name = field.name
                self.field = field
            }

            switch field.type {
            case .BOOLEAN:
                try makeBuilder(Bool.self, field: field)
            case .INT8:
                try makeBuilder(Int8.self, field: field)
            case .INT16:
                try makeBuilder(Int16.self, field: field)
            case .INT32:
                try makeBuilder(Int32.self, field: field)
            case .INT64:
                try makeBuilder(Int64.self, field: field)
            case .UINT8:
                try makeBuilder(UInt8.self, field: field)
            case .UINT16:
                try makeBuilder(UInt16.self, field: field)
            case .UINT32:
                try makeBuilder(UInt32.self, field: field)
            case .UINT64:
                try makeBuilder(UInt64.self, field: field)
            case .FLOAT:
                try makeBuilder(Float.self, field: field)
            case .DOUBLE:
                try makeBuilder(Double.self, field: field)
            case .VARCHAR:
                try makeBuilder(String.self, field: field)
            case .DATE:
                try makeBuilder(Date.self, field: field)
            }
        }

        func makeBuilder<T>(_ type: T.Type, field: FieldDef) throws {
            let arrayBuilder = try ArrowArrayBuilders.loadBuilder(type)
            appendFunc = {data in arrayBuilder.appendAny(data)}
            finish = { try arrayBuilder.toHolder()}
            buildExpression(type, field: self.field)
        }

        public func buildExpression<T>(_ type: T.Type, field: FieldDef) {
            if let scalarField = field as? FieldScalarFuncDef {
                PredicateBuilderHelper<T>.buildScalarFunc(scalarField, context: self.context)
            } else if let complexField = field as? FieldComplexDef {
                complexField.calcFunc = OperationBuilder(context).build(complexField.expression)
            }
        }
    }

    private var fields: [FieldDef]
    private var colBuilders = [ProjectFieldBuilder]()
    public init(fields: [FieldDef], context: QueryContext) {
        self.fields = fields
        do {
            for field in fields {
                colBuilders.append(try ProjectFieldBuilder(field, context: context))
            }
        } catch {
            fatalError("Error building projection: \(error)")
        }
    }

    public func append(_ rowAccessor: RowAccessor) {
        for index in 0..<fields.count {
            fields[index].load(rowAccessor, appendFunc: colBuilders[index].appendFunc!)
        }
    }

    public func append(_ rowAccessor: RowAccessor, indicies: [UInt]) {
        for fieldIndex in 0..<fields.count {
            _ = rowAccessor.to(rowIndex: 0)
            let field = fields[fieldIndex]
            let localAppendFunc = colBuilders[fieldIndex].appendFunc!
            for index in 0..<indicies.count {
                _ = rowAccessor.to(rowIndex: indicies[index])
                field.load(rowAccessor, appendFunc: localAppendFunc)
            }
        }
    }

    public func appendAll(_ rowAccessor: RowAccessor) {
        for fieldIndex in 0..<fields.count {
            let field = fields[fieldIndex]
            let localAppendFunc = colBuilders[fieldIndex].appendFunc!
            for index in 0..<rowAccessor.count {
                _ = rowAccessor.to(rowIndex: index)
                field.load(rowAccessor, appendFunc: localAppendFunc)
            }
        }
    }

    public func finishRows() {
        for index in 0..<fields.count {
            fields[index].finish(appendFunc: colBuilders[index].appendFunc!)
        }
    }

    public func finish() -> RecordBatch {
        let rbBuilder = RecordBatch.Builder()
        do {
            for colBuilder in colBuilders {
                rbBuilder.addColumn(colBuilder.name, arrowArray: try colBuilder.finish!())
            }
        } catch {
            fatalError("Error building record batch: \(error)")
        }

        switch rbBuilder.finish() {
        case .success(let rb):
            return rb
        case .failure(let error):
            fatalError("Error building record batch: \(error)")
        }
    }
}
