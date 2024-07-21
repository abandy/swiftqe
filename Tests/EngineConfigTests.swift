/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */
import Foundation
import XCTest
import Arrow
@testable import swiftqe

final class EngineConfigTests: XCTestCase {
    class TestFields: Codable {
        var int32Field: Int32? = 0
        var int64Field: Int64? = 0
        var uint32Field: UInt32? = 0
        var uint64Field: UInt64? = 0
    }

    func testConfig() throws {
        do {
            var testInts = [TestFields]()
            var offset = 0
            for index in 0..<10 {
                offset = index * 8
                let testInt = TestFields()
                testInt.int32Field = Int32(offset + 1)
                testInt.int64Field = Int64(offset + 2)
                testInt.uint32Field = UInt32(offset + 3)
                testInt.uint64Field = UInt64(offset + 4)
                testInts.append(testInt)
            }

            let config = QueryEngineConfig()
            let engine = QueryEngine()
            XCTAssertEqual(FilterFactory.type, .row)
            engine.add(try ArrowEncoder.encode(testInts)!, name: "tab")
            for idx in 0..<4 {
                config.filterType = FilterType(rawValue: Int32(idx))!
                let queryRb = try engine.run(
                    "SELECT int32Field FROM tab WHERE (int32Field + 1) = int64Field and int32Field = 1",
                    config: config)!
                if FilterFactory.type == .all {
                    XCTAssertEqual(queryRb.length, UInt(testInts.count))
                } else {
                    XCTAssertEqual(queryRb.length, 1)
                }
                XCTAssertEqual(queryRb.columnCount, 1)
                XCTAssertEqual(FilterFactory.type.rawValue, Int32(idx))
            }
        } catch let error {
            XCTFail("Error occured executing query: \(error)")
        }
    }
}
