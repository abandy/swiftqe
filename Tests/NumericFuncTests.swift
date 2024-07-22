/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */
import Foundation
import XCTest
import Arrow
@testable import swiftqe

final class NumericFuncTests: XCTestCase {
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

    func testABS() throws {
        do {
            let testOps = getTestData()
            let query = "SELECT ABS(-1) as sumField FROM tab WHERE ABS(1) = int16Field"
            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testOps)!, name: "tab")
            let rb = try engine.run(query, failOnSqlParseError: true)!
            XCTAssertEqual(rb.length, 1)
            XCTAssertEqual(rb.columnCount, 1)
            for column in rb.columns {
                let asString = column.array as! AsString
                XCTAssertEqual(asString.asString(0), "\(1)")
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testPOWER() throws {
        do {
            let testOps = getTestData()
            let query = "SELECT POWER(int16Field, 2), int16Field as sumField FROM tab"
            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testOps)!, name: "tab")
            let rb = try engine.run(query, failOnSqlParseError: true)!
            XCTAssertEqual(rb.length, 10)
            XCTAssertEqual(rb.columnCount, 2)
            for idx in 0..<rb.length {
                let val = (rb.columns[1].array as! FixedArray<Int16>)[idx]!
                let asString = rb.columns[0].array as! AsString
                let powVal = Double(truncating: pow(Decimal(val), 2) as NSNumber)
                XCTAssertEqual(asString.asString(idx), "\(powVal)")
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }
}
