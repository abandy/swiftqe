/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */
import Foundation
import XCTest
import Arrow
@testable import swiftqe

final class StringFuncTests: XCTestCase {
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
        var stringField: String? = ""
    }

    func getTestData() -> [TestOp] {
        var testOps = [TestOp]()
        var offset = 0
        for index in 0..<10 {
            offset = index * 11
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
            testOp.stringField = "string\(offset + 10)"
            testOps.append(testOp)
        }

        return testOps
    }

    func testLEN() throws {
        do {
            let testOps = getTestData()
            let query = "SELECT LENGTH('ONE') as sumField FROM tab WHERE 1 = int16Field"
            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testOps)!, name: "tab")
            let rb = try engine.run(query, failOnSqlParseError: true)!
            XCTAssertEqual(rb.length, 1)
            XCTAssertEqual(rb.columnCount, 1)
            for column in rb.columns {
                let asString = column.array as! AsString
                XCTAssertEqual(asString.asString(0), "\(3)")
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testLOWER() throws {
        do {
            let testOps = getTestData()
            let query = "SELECT LOWER('ONE') as sumField FROM tab WHERE 1 = int16Field"
            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testOps)!, name: "tab")
            let rb = try engine.run(query, failOnSqlParseError: true)!
            XCTAssertEqual(rb.length, 1)
            XCTAssertEqual(rb.columnCount, 1)
            for column in rb.columns {
                let asString = column.array as! AsString
                XCTAssertEqual(asString.asString(0), "one")
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }
}
