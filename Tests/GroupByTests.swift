/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */
import Foundation
import XCTest
import Arrow
@testable import swiftqe

final class GroupByTests: XCTestCase {
    class TestGroupBy: Codable {
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
    }

    class TestGBResult: Codable {
        var int16Field: Int16?  = 0
        var sumField: Int64? = 0
    }

    func getTestData() -> [TestGroupBy] {
        var testGBs = [TestGroupBy]()
        var offset = 0
        for index in 0..<10 {
            offset = index * 10
            let testGB = TestGroupBy()
            testGB.int8Field = Int8(offset)
            testGB.int16Field = Int16(index % 2)
            testGB.int32Field = Int32(index % 4)
            testGB.int64Field = Int64(offset + 3)
            testGB.uint8Field = nil
            testGB.uint16Field = nil
            testGB.uint32Field = UInt32(offset + 6)
            testGB.uint64Field = UInt64(offset + 7)
            testGB.floatField = Float(offset + 8)
            testGB.doubleField = Double(offset + 9)
            testGBs.append(testGB)
        }

        return testGBs
    }

    func testSimple() throws {
        do {
            let outputFields: [TestGBResult] =
                try QueryEngine.run(
                    "SELECT int16Field, SUM(int8Field) as sumField FROM tab GROUP BY int16Field",
                    inputName: "tab",
                    input: getTestData(),
                    failOnSqlParseError: true)!
            XCTAssertEqual(outputFields.count, 2)
            for result in outputFields {
                if result.int16Field == 1 {
                    XCTAssertEqual(result.sumField, 250)
                } else if result.int16Field == 0 {
                    XCTAssertEqual(result.sumField, 200)
                } else {
                    XCTFail("Invalid value found in key field: \(result.int16Field!)")
                }
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testSimpleWithWhere() throws {
        do {
            let outputFields: [TestGBResult] =
                try QueryEngine.run(
                    "SELECT int16Field, SUM(int8Field) as sumField FROM tab WHERE int32Field = 0 GROUP BY int16Field",
                    inputName: "tab",
                    input: getTestData(),
                    failOnSqlParseError: true)!
            XCTAssertEqual(outputFields.count, 1)
            for result in outputFields {
                XCTAssertEqual(result.int16Field, 0)
                XCTAssertEqual(result.sumField, 30)
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testSimpleWithNil() throws {
        do {
            let input = getTestData()
            for index in 0..<input.count where index % 4 == 0 {
                input[index].int16Field = nil
            }

            let outputFields: [TestGBResult] =
                try QueryEngine.run(
                    "SELECT int16Field, SUM(int8Field) as sumField FROM tab GROUP BY int16Field",
                    inputName: "tab",
                    input: input,
                    failOnSqlParseError: true)!
            XCTAssertEqual(outputFields.count, 3)
            for result in outputFields {
                if result.int16Field == 1 {
                    XCTAssertEqual(result.sumField, 250)
                } else if result.int16Field == 0 {
                    XCTAssertEqual(result.sumField, 80)
                } else if result.int16Field == nil {
                    XCTAssertEqual(result.sumField, 120)
                } else {
                    XCTFail("Invalid value found in key field: \(result.int16Field!)")
                }
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testMulti() throws {
        do {
            let testGBs = getTestData()
            let query = "SELECT int16Field, SUM(int8Field) as sumField FROM tab GROUP BY int16Field, int32Field"
            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testGBs)!, name: "tab")
            let rb = try engine.run(query, failOnSqlParseError: true)!
            XCTAssertEqual(rb.length, 4)
            XCTAssertEqual(rb.columnCount, 2)
            let decoder = ArrowDecoder(rb)
            let outputFields = try decoder.decode(TestGBResult.self)
            XCTAssertEqual(outputFields.count, 4)
            for result in outputFields {
                if result.int16Field == 1 {
                    XCTAssertTrue(result.sumField == 150 || result.sumField == 100)
                } else if result.int16Field == 0 {
                    XCTAssertTrue(result.sumField == 80 || result.sumField == 120)
                } else {
                    XCTFail("Invalid value found in key field: \(result.int16Field!)")
                }
            }

        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
     }
}
