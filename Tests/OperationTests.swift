/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */
import Foundation
import XCTest
import Arrow
@testable import swiftqe

final class OperationTests: XCTestCase {
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

    func testAdd() throws {
        do {
            let testOps = getTestData()
            let queryInfos = [
                (query: "SELECT int8Field + 1, int16Field + 2, int32Field + 3, int64Field + 4, " +
                 "uint8Field + 5, uint16Field + 6, uint32Field + 7, uint64Field + 8, floatField + 9 " +
                 ", doubleField + 10 FROM tab", rowCnt: 10, colCnt: 10)
            ]

            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testOps)!, name: "tab")
            for infoIndex in 0..<queryInfos.count {
                let info = queryInfos[infoIndex]
                let rb = try engine.run(info.query)!
                XCTAssertEqual(rb.length, UInt(info.rowCnt))
                XCTAssertEqual(rb.columnCount, UInt(info.colCnt))
                var expectedValue = 1
                for column in rb.columns {
                    let asString = column.array as! AsString
                    if column.type.id == .float || column.type.id == .double {
                        XCTAssertEqual(asString.asString(0), "\(expectedValue).0")
                    } else {
                        XCTAssertEqual(asString.asString(0), "\(expectedValue)")
                    }
                    expectedValue += 2
                }
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testSubtract() throws {
        do {
            let testOps = getTestData()
            let queryInfos = [
                (query: "SELECT int8Field - 1, int16Field - 1, int32Field - 1, int64Field - 1, " +
                 "uint8Field - 1, uint16Field - 1, uint32Field - 1, uint64Field - 1, floatField - 1, " +
                 "doubleField - 1 FROM tab", rowCnt: 10, colCnt: 10)
            ]

            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testOps)!, name: "tab")
            for infoIndex in 0..<queryInfos.count {
                let info = queryInfos[infoIndex]
                let rb = try engine.run(info.query)!
                XCTAssertEqual(rb.length, UInt(info.rowCnt))
                XCTAssertEqual(rb.columnCount, UInt(info.colCnt))
                for colIndex in 0..<rb.columnCount {
                    let column = rb.columns[Int(colIndex)]
                    let asString = column.array as! AsString
                    let expectedValue = Int(colIndex) - 1
                    if column.type.id == .float || column.type.id == .double {
                        XCTAssertEqual(asString.asString(0), "\(expectedValue).0")
                    } else {
                        XCTAssertEqual(asString.asString(0), "\(expectedValue)")
                    }
                }
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testMultiply() throws {
        do {
            let testOps = getTestData()
            let queryInfos = [
                (query: "SELECT int8Field * 1, int16Field * 2, int32Field * 3, int64Field * 4, " +
                 "uint8Field * 5, uint16Field * 6, uint32Field * 7, uint64Field * 8, floatField * 9, " +
                 "doubleField * 10 FROM tab", rowCnt: 10, colCnt: 10)
            ]

            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testOps)!, name: "tab")
            for infoIndex in 0..<queryInfos.count {
                let info = queryInfos[infoIndex]
                let rb = try engine.run(info.query)!
                XCTAssertEqual(rb.length, UInt(info.rowCnt))
                XCTAssertEqual(rb.columnCount, UInt(info.colCnt))
                for colIndex in 0..<rb.columnCount {
                    let column = rb.columns[Int(colIndex)]
                    let asString = column.array as! AsString
                    let expectedValue = colIndex * (colIndex + 1)
                    if column.type.id == .float || column.type.id == .double {
                        XCTAssertEqual(asString.asString(0), "\(expectedValue).0")
                    } else {
                        XCTAssertEqual(asString.asString(0), "\(expectedValue)")
                    }
                }
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testDivide() throws {
        do {
            let testOps = getTestData()
            let queryInfos = [
                (query: "SELECT int8Field / 1, int16Field / 1, int32Field  / 2, int64Field  / 3, " +
                "uint8Field / 2, uint16Field / 5, uint32Field / 2, uint64Field / 7, floatField / 2, " +
                 "doubleField / 9 FROM tab", rowCnt: 10, colCnt: 10)
            ]

            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testOps)!, name: "tab")
            for infoIndex in 0..<queryInfos.count {
                let info = queryInfos[infoIndex]
                let rb = try engine.run(info.query)!
                XCTAssertEqual(rb.length, UInt(info.rowCnt))
                XCTAssertEqual(rb.columnCount, UInt(info.colCnt))
                for colIndex in 0..<rb.columnCount {
                    let column = rb.columns[Int(colIndex)]
                    let asString = column.array as! AsString
                    let expectedValue = colIndex % 2 == 0
                        ? colIndex / 2
                        : 1
                    if column.type.id == .float || column.type.id == .double {
                        XCTAssertEqual(asString.asString(0), "\(expectedValue).0")
                    } else {
                        XCTAssertEqual(asString.asString(0), "\(expectedValue)")
                    }
                }
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }
}
