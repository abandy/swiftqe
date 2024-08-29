/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

import Foundation
import XCTest
import Arrow
@testable import swiftqe

final class SelectTests: XCTestCase {
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

    class DateField: Codable {
        var dateField: Date?
    }

    func testInt( // swiftlint:disable:this function_body_length
    ) throws {
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
                "SELECT int8Field FROM tab",
                "SELECT int16Field FROM tab",
                "SELECT int32Field FROM tab",
                "SELECT int64Field FROM tab",
                "SELECT uint8Field FROM tab",
                "SELECT uint16Field FROM tab",
                "SELECT uint32Field FROM tab",
                "SELECT uint64Field FROM tab"
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
                XCTAssertEqual(queryRb.length, 10)
                XCTAssertEqual(queryRb.columnCount, 1)
                let decoder = ArrowDecoder(queryRb)
                let outputFields = try decoder.decode(IntFields.self)
                XCTAssertEqual(outputFields.count, 10)
                for itemIndex in 0..<outputFields.count {
                    XCTAssertTrue(queryCheck[queryIndex](outputFields[itemIndex], queryIndex + (itemIndex * 8)))
                }
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
                offset = index * 8
                let testReal = RealFields()
                testReal.floatField = Float(offset)
                testReal.doubleField = Double(offset + 1)
                testReals.append(testReal)
            }

            let simpleQueries = [
                "SELECT floatField FROM tab",
                "SELECT doubleField FROM tab"
            ]

            let queryCheck: [(RealFields, Double) -> Bool] = [
                {(input: RealFields, val: Double) in input.floatField! == Float(val)},
                {(input: RealFields, val: Double) in input.doubleField! == val}
            ]

            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testReals)!, name: "tab")
            for queryIndex in 0..<simpleQueries.count {
                let queryRb = try engine.run(simpleQueries[queryIndex])!
                XCTAssertEqual(queryRb.length, 10)
                XCTAssertEqual(queryRb.columnCount, 1)
                let decoder = ArrowDecoder(queryRb)
                let outputFields = try decoder.decode(RealFields.self)
                XCTAssertEqual(outputFields.count, 10)
                for itemIndex in 0..<outputFields.count {
                    XCTAssertTrue(queryCheck[queryIndex](outputFields[itemIndex], Double(queryIndex + (itemIndex * 8))))
                }
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

            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testStrings)!, name: "tab")
            let queryRb = try engine.run("SELECT stringField FROM tab")!
            XCTAssertEqual(queryRb.length, 10)
            XCTAssertEqual(queryRb.columnCount, 1)
            let decoder = ArrowDecoder(queryRb)
            let outputFields = try decoder.decode(StringField.self)
            XCTAssertEqual(outputFields.count, 10)
            for itemIndex in 0..<outputFields.count {
                XCTAssertEqual(outputFields[itemIndex].stringField!, "test\(itemIndex)")
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testStar() throws {
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

            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testInts)!, name: "tab1")
            let queryRb = try engine.run("SELECT * FROM tab1")!
            XCTAssertEqual(queryRb.length, 10)
            XCTAssertEqual(queryRb.columnCount, 8)
            let decoder = ArrowDecoder(queryRb)
            let outputFields = try decoder.decode(IntFields.self)
            XCTAssertEqual(outputFields.count, 10)
            offset = 0
            for itemIndex in 0..<outputFields.count {
                offset = itemIndex * 8
                XCTAssertEqual(outputFields[itemIndex].int8Field!, Int8(offset))
                XCTAssertEqual(outputFields[itemIndex].int16Field!, Int16(offset + 1))
                XCTAssertEqual(outputFields[itemIndex].int32Field!, Int32(offset + 2))
                XCTAssertEqual(outputFields[itemIndex].int64Field!, Int64(offset + 3))
                XCTAssertEqual(outputFields[itemIndex].uint8Field!, UInt8(offset + 4))
                XCTAssertEqual(outputFields[itemIndex].uint16Field!, UInt16(offset + 5))
                XCTAssertEqual(outputFields[itemIndex].uint32Field!, UInt32(offset + 6))
                XCTAssertEqual(outputFields[itemIndex].uint64Field!, UInt64(offset + 7))
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testUniqueFieldFailure() throws {
        var testStrings = [StringField]()
        for index in 0..<10 {
            let testData = StringField()
            testData.stringField = "test\(index)"
            testStrings.append(testData)
        }

        let engine = QueryEngine()
        engine.add(try ArrowEncoder.encode(testStrings)!, name: "tab")
        XCTAssertThrowsError(
            try engine.run("SELECT stringField, stringField FROM tab"))
    }

    func testUniqueFieldAlias() throws {
        do {
            var testStrings = [StringField]()
            for index in 0..<10 {
                let testData = StringField()
                testData.stringField = "test\(index)"
                testStrings.append(testData)
            }

            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testStrings)!, name: "tab")
            let queryRb = try engine.run("SELECT stringField, stringField as field2 FROM tab")!
            XCTAssertEqual(queryRb.length, 10)
            XCTAssertEqual(queryRb.columnCount, 2)
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }

    func testDate(
    ) throws {
        do {
            var testDates = [DateField]()
            let currentDateFormatter = DateFormatter()
            currentDateFormatter.dateFormat = "yyyy-MM-dd 00:00:00"
            let baseDate = currentDateFormatter.date(from: "2024-08-01")!
            let calendar = Calendar(identifier: .gregorian)
            var dateCmoponents = calendar.dateComponents([.year, .month, .day], from: baseDate)
            for _ in 0..<10 {
                let date = DateField()
                dateCmoponents.day! += 1
                date.dateField = calendar.date(from: dateCmoponents)
                testDates.append(date)
            }

            let engine = QueryEngine()
            engine.add(try ArrowEncoder.encode(testDates)!, name: "tab")
            let queryRb = try engine.run("SELECT dateField FROM tab")!
            XCTAssertEqual(queryRb.length, 10)
            XCTAssertEqual(queryRb.columnCount, 1)
            let decoder = ArrowDecoder(queryRb)
            let outputFields = try decoder.decode(DateField.self)
            XCTAssertEqual(outputFields.count, 10)
            for itemIndex in 0..<outputFields.count {
                XCTAssertEqual(Int(outputFields[itemIndex].dateField!.timeIntervalSince1970),
                               Int(testDates[itemIndex].dateField!.timeIntervalSince1970))
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }
}
