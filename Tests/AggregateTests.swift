/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */
import Foundation
import XCTest
import Arrow
@testable import swiftqe

final class AggregateTests: XCTestCase {
    class TestOp: Codable {
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

    func getTestData() -> [TestOp] {
        var testOps = [TestOp]()
        var offset = 0
        for index in 0..<10 {
            offset = index * 10
            let testOp = TestOp()
            testOp.int8Field = Int8(offset)
            testOp.int16Field = Int16(offset + 1)
            testOp.int32Field = Int32(offset + 2)
            testOp.int64Field = Int64(offset + 3)
            testOp.uint8Field = UInt8(offset + 4)
            testOp.uint16Field = UInt16(offset + 5)
            testOp.uint32Field = UInt32(offset + 6)
            testOp.uint64Field = UInt64(offset + 7)
            testOp.floatField = Float(offset + 8)
            testOp.doubleField = Double(offset + 9)
            testOps.append(testOp)
        }

        return testOps
    }

    func testSUM() throws {
        do {
            let testOps = getTestData()
            let query = "SELECT SUM(int8Field) as sumField FROM tab"
            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testOps)!, name: "tab")
            let rb = try engine.run(query)!
            XCTAssertEqual(rb.length, 1)
            XCTAssertEqual(rb.columnCount, 1)
            let expectedValue = 450
            for column in rb.columns {
                let asString = column.array as! AsString
                XCTAssertEqual(asString.asString(0), "\(expectedValue)")
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testAVG() throws {
        do {
            let testOps = getTestData()
            let query = "SELECT AVG(int8Field) as sumField FROM tab"
            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testOps)!, name: "tab")
            let rb = try engine.run(query)!
            XCTAssertEqual(rb.length, 1)
            XCTAssertEqual(rb.columnCount, 1)
            let expectedValue = 45
            for column in rb.columns {
                let asString = column.array as! AsString
                XCTAssertEqual(asString.asString(0), "\(expectedValue)")
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testMIN() throws {
        do {
            let testOps = getTestData()
            let query = "SELECT MIN(int8Field) as sumField FROM tab"
            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testOps)!, name: "tab")
            let rb = try engine.run(query)!
            XCTAssertEqual(rb.length, 1)
            XCTAssertEqual(rb.columnCount, 1)
            let expectedValue = 0
            for column in rb.columns {
                let asString = column.array as! AsString
                XCTAssertEqual(asString.asString(0), "\(expectedValue)")
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testMAX() throws {
        do {
            let testOps = getTestData()
            let query = "SELECT MAX(int8Field) as sumField FROM tab"
            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testOps)!, name: "tab")
            let rb = try engine.run(query, failOnSqlParseError: true)!
            XCTAssertEqual(rb.length, 1)
            XCTAssertEqual(rb.columnCount, 1)
            let expectedValue = 90
            for column in rb.columns {
                let asString = column.array as! AsString
                XCTAssertEqual(asString.asString(0), "\(expectedValue)")
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testStdDev() throws {
        do {
            let data: [Int8] = [2, 7, 3, 12, 9]
            var testOps = [TestOp]()
            for index in 0..<data.count {
                let testOp = TestOp()
                testOp.int8Field = data[index]
                testOps.append(testOp)
            }

            let query = "SELECT STDDEV(int8Field) as sumField FROM tab"

            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testOps)!, name: "tab")
            let rb = try engine.run(query, failOnSqlParseError: true)!
            XCTAssertEqual(rb.length, 1)
            XCTAssertEqual(rb.columnCount, 1)
            let expectedValue = 3.72
            for column in rb.columns {
                let anyArray = column.array
                let val = anyArray.asAny(0) as! Double
                XCTAssertEqual(String(format: "%.2f", val), "\(expectedValue)")
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testAggError() throws {
        do {
            let data: [Int8] = [2, 7, 3, 12, 9]
            var testOps = [TestOp]()
            for index in 0..<data.count {
                let testOp = TestOp()
                testOp.int8Field = data[index]
                testOps.append(testOp)
            }

            let query = "SELECT int8Field, STDDEV(int8Field) as sumField FROM tab"

            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testOps)!, name: "tab")
            XCTAssertThrowsError(try engine.run(query, failOnSqlParseError: true))
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }
}
