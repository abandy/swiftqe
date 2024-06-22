/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */
import Foundation
import XCTest
import Arrow
@testable import swiftqe

final class ProjectTests: XCTestCase {
    class TestProject: Codable {
        var int8Field: Int8? = 0
        var int16Field: Int16? = 0
        var int32Field: Int32? = 0
        var int64Field: Int64? = 0
        var uint8Field: UInt8? = 0
        var uint16Field: UInt16? = 0
        var uint32Field: UInt32? = 0
        var uint64Field: UInt64? = 0
        var floatField: Float? = 0
        var doubleField: Double? = 0
        var stringField: String? = ""
    }

    func testSimple() throws {
        do {
            var testInts = [TestProject]()
            var offset = 0
            for index in 0..<10 {
                offset = index * 11
                let testInt = TestProject()
                testInt.int8Field = Int8(offset)
                testInt.int16Field = Int16(offset + 1)
                testInt.int32Field = Int32(offset + 2)
                testInt.int64Field = Int64(offset + 3)
                testInt.uint8Field = UInt8(offset + 4)
                testInt.uint16Field = UInt16(offset + 5)
                testInt.uint32Field = UInt32(offset + 6)
                testInt.uint64Field = UInt64(offset + 7)
                testInt.floatField = Float(offset + 8)
                testInt.doubleField = Double(offset + 9)
                testInt.stringField = "test\(offset + 10)"
                testInts.append(testInt)
            }

            let queryInfos = [
                (query: "SELECT uint8Field, uint16Field, uint32Field, uint64Field, " +
                "int8Field, int16Field, int32Field, int64Field, floatField, doubleField, " +
                 " stringField FROM tab", rowCnt: 10, colCnt: 11),
                (query: "SELECT uint16Field, uint32Field, stringField FROM tab", rowCnt: 10, colCnt: 3)
            ]

            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testInts)!, name: "tab")
            for info in queryInfos {
                let rb = try engine.run(info.query)!
                XCTAssertEqual(rb.length, UInt(info.rowCnt))
                XCTAssertEqual(rb.columnCount, UInt(info.colCnt))
                for columnIndex in 0..<rb.columnCount {
                    let colName = rb.schema.fields[Int(columnIndex)].name
                    let column = rb.columns[Int(columnIndex)]
                    validateTypeFromName(colName, type: column.type.id)
                }
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func validateTypeFromName( // swiftlint:disable:this cyclomatic_complexity
        _ colName: String, type: ArrowTypeId) {
        var matchType: ArrowTypeId = .unknown
        if colName == "uint8Field" {matchType = .uint8
        } else if colName == "uint16Field" {matchType = .uint16
        } else if colName == "uint32Field" {matchType = .uint32
        } else if colName == "uint64Field" {matchType = .uint64
        } else if colName == "int8Field" {matchType = .int8
        } else if colName == "int16Field" {matchType = .int16
        } else if colName == "int32Field" {matchType = .int32
        } else if colName == "int64Field" {matchType = .int64
        } else if colName == "floatField" {matchType = .float
        } else if colName == "doubleField" {matchType = .double
        } else if colName == "stringField" {matchType = .string}
        XCTAssertEqual(type, matchType)

    }
}
