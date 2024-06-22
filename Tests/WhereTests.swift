/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */
import Foundation
import XCTest
import Arrow
@testable import swiftqe

final class WhereTests: XCTestCase {
    class IntFields: Codable {
        var int8Field: Int8? = 0
        var int16Field: Int16? = 0
        var int32Field: Int32? = 0
        var int64Field: Int64? = 0
        var uint8Field: UInt8? = 0
        var uint16Field: UInt16? = 0
        var uint32Field: UInt32? = 0
        var uint64Field: UInt64? = 0
    }

    class RealFields: Codable {
        var floatField: Float? = 0
        var doubleField: Double? = 0
    }

    class StringField: Codable {
        var stringField: String? = ""
    }

    func testSimpleInt() throws {
        do {
            var testInts = [IntFields]()
            var offset = 0
            for index in 0..<10 {
                offset = index * 8
                let testInt = IntFields()
                testInt.int8Field = Int8(offset)
                testInt.int16Field = Int16(offset + 1)
                testInt.int32Field = Int32(offset + 2)
                testInt.int64Field = Int64(offset + 3)
                testInt.uint8Field = UInt8(offset + 4)
                testInt.uint16Field = UInt16(offset + 5)
                testInt.uint32Field = UInt32(offset + 6)
                testInt.uint64Field = UInt64(offset + 7)
                testInts.append(testInt)
            }

            let simpleQueries = [
                "SELECT int8Field FROM tab WHERE int8Field = 0",
                "SELECT int16Field FROM tab WHERE int16Field = 1",
                "SELECT int32Field FROM tab WHERE int32Field = 2",
                "SELECT int64Field FROM tab WHERE int64Field = 3",
                "SELECT uint8Field FROM tab WHERE uint8Field = 4",
                "SELECT uint16Field FROM tab WHERE uint16Field = 5",
                "SELECT uint32Field FROM tab WHERE uint32Field = 6",
                "SELECT uint64Field FROM tab WHERE uint64Field = 7"
            ]

            let queryCheck: [(IntFields, Int) -> Bool] = [
                {(input: IntFields, val: Int) in input.int8Field! == val},
                {(input: IntFields, val: Int) in input.int16Field! == val},
                {(input: IntFields, val: Int) in input.int32Field! == val},
                {(input: IntFields, val: Int) in input.int64Field! == val},
                {(input: IntFields, val: Int) in input.uint8Field! == val},
                {(input: IntFields, val: Int) in input.uint16Field! == val},
                {(input: IntFields, val: Int) in input.uint32Field! == val},
                {(input: IntFields, val: Int) in input.uint64Field! == val}
            ]

            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testInts)!, name: "tab")
            for queryIndex in 0..<simpleQueries.count {
                let queryRb = try engine.run(simpleQueries[queryIndex])!
                XCTAssertEqual(queryRb.length, 1)
                XCTAssertEqual(queryRb.columnCount, 1)
                let decoder = ArrowDecoder(queryRb)
                let outputFields = try decoder.decode(IntFields.self)
                XCTAssertEqual(outputFields.count, 1)
                XCTAssertTrue(queryCheck[queryIndex](outputFields[0], queryIndex))
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testANDORInt() throws {
        do {
            var testInts = [IntFields]()
            var offset = 0
            for index in 0..<10 {
                offset = index * 8
                let testInt = IntFields()
                testInt.int8Field = Int8(offset)
                testInt.int16Field = Int16(offset + 1)
                testInt.int32Field = Int32(offset + 2)
                testInt.int64Field = Int64(offset + 3)
                testInt.uint8Field = UInt8(offset + 4)
                testInt.uint16Field = UInt16(offset + 5)
                testInt.uint32Field = UInt32(offset + 6)
                testInt.uint64Field = UInt64(offset + 7)
                testInts.append(testInt)
            }

            let queryInfos = [
                (query: "SELECT int8Field FROM tab WHERE (int8Field + 1) = int16Field and int16Field = 1", cnt: 1),
                (query: "SELECT int8Field FROM tab WHERE int8Field = 0 and int16Field = 0", cnt: 0),
                (query: "SELECT int8Field FROM tab WHERE int8Field = 0 or int16Field = 1", cnt: 1),
                (query: "SELECT int8Field FROM tab WHERE int8Field = 0 or int16Field = 9", cnt: 2),
                (query: "SELECT int8Field FROM tab WHERE int16Field > 9", cnt: 8),
                (query: "SELECT int8Field FROM tab WHERE int16Field >= 9", cnt: 9),
                (query: "SELECT int8Field FROM tab WHERE uint32Field != 6", cnt: 9),
                (query: "SELECT int8Field FROM tab WHERE uint32Field != 6 AND int8Field != 8", cnt: 8),
                (query: "SELECT int8Field FROM tab WHERE uint32Field != 6 AND int8Field != 8", cnt: 8)
            ]

            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testInts)!, name: "tab")
            for info in queryInfos {
                XCTAssertEqual(try engine.run(info.query)!.length, UInt(info.cnt), info.query)
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testReal() throws {
        do {
            var testReals = [RealFields]()
            var offset = 0
            for index in 0..<10 {
                offset = index * 2
                let testReal = RealFields()
                testReal.floatField = Float(offset)
                testReal.doubleField = Double(offset + 1)
                testReals.append(testReal)
            }

            let simpleQueries = [
                "SELECT floatField FROM tab WHERE floatField = 2",
                "SELECT doubleField FROM tab WHERE doubleField = 3"
            ]

            let expectedOutput = [2.0, 3.0]
            let queryCheck: [(RealFields, Double) -> Bool] = [
                {(input: RealFields, val: Double) in input.floatField! == Float(val)},
                {(input: RealFields, val: Double) in input.doubleField! == val}
            ]

            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testReals)!, name: "tab")
            for queryIndex in 0..<simpleQueries.count {
                let queryRb = try engine.run(simpleQueries[queryIndex])!
                XCTAssertEqual(queryRb.length, 1)
                XCTAssertEqual(queryRb.columnCount, 1)
                let decoder = ArrowDecoder(queryRb)
                let outputFields = try decoder.decode(RealFields.self)
                XCTAssertEqual(outputFields.count, 1)
                XCTAssertTrue(queryCheck[queryIndex](outputFields[0], expectedOutput[queryIndex]))
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testString() throws {
        do {
            var testStrings = [StringField]()
            for index in 0..<10 {
                let testData = StringField()
                testData.stringField = "test\(index)"
                testStrings.append(testData)
            }

            let queryInfos = [
                (query: "SELECT stringField FROM tab WHERE stringField = 'test1'", cnt: 1),
                (query: "SELECT stringField FROM tab WHERE stringField != 'test1'", cnt: 9)
            ]

            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testStrings)!, name: "tab")
            for info in queryInfos {
                XCTAssertEqual(try engine.run(info.query)!.length, UInt(info.cnt))
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testANDORString() throws {
        do {
            var testStrings = [StringField]()
            for index in 0..<10 {
                let testData = StringField()
                testData.stringField = "test\(index)"
                testStrings.append(testData)
            }

            let queryInfos = [
                (query: "SELECT stringField FROM tab WHERE stringField != 'test1' and stringField != 'test2'", cnt: 8),
                (query: "SELECT stringField FROM tab WHERE stringField = 'test1' and stringField = 'test2'", cnt: 0),
                (query: "SELECT stringField FROM tab WHERE stringField = 'test1' or stringField = 'test2'", cnt: 2)
            ]

            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testStrings)!, name: "tab")
            for info in queryInfos {
                XCTAssertEqual(try engine.run(info.query)!.length, UInt(info.cnt))
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }
}
