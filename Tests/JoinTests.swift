/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */
import Foundation
import XCTest
import Arrow
@testable import swiftqe

final class JoinTests: XCTestCase {
    class TestInfo2: Codable {
        var five: Int32
        var six: String
        required init() {
            self.five = 0
            self.six = ""
        }

        init(five: Int32, six: String) {
            self.five = five
            self.six = six
        }
    }

    class TestInfo: Codable {
        var one: Int32
        var two: String
        required init() {
            self.one = 0
            self.two = ""
        }

        init(one: Int32, two: String) {
            self.one = one
            self.two = two
        }
    }

    class TestResult: Codable {
        var three: Int32?
        var six: String?
        var four: String?
        var five: Int32?
    }

    func testCartesian() throws {
        var infos = [TestInfo]()
        for index in 0..<500 {
            infos.append(TestInfo(one: Int32(index), two: "Test\(index)"))
        }

        var info2s = [TestInfo2]()
        for index in 0..<1000 {
            info2s.append(TestInfo2(five: Int32(index * 5), six: "Test\(index)"))
        }

        let dmlInput = """
                    SELECT tab.one as three, tab.two, tab2.five as five, tab2.six
                    FROM tab, tab2
                    """
        let engine = QueryEngine()
        engine.add(try ArrowEncoder.encode(infos)!, name: "tab")
        engine.add(try ArrowEncoder.encode(info2s)!, name: "tab2")
        XCTAssertThrowsError(try engine.run(dmlInput, failOnSqlParseError: true))
    }

    func testCross() throws {
        var infos = [TestInfo]()
        for index in 0..<500 {
            infos.append(TestInfo(one: Int32(index), two: "Test\(index)"))
        }

        var info2s = [TestInfo2]()
        for index in 0..<1000 {
            info2s.append(TestInfo2(five: Int32(index * 5), six: "Test\(index)"))
        }

        let dmlInput = """
                    SELECT tab.one as three, tab.two, tab2.five as five, tab2.six
                    FROM tab CROSS JOIN tab2
                    """
        let engine = QueryEngine()
        engine.add(try ArrowEncoder.encode(infos)!, name: "tab")
        engine.add(try ArrowEncoder.encode(info2s)!, name: "tab2")
        XCTAssertThrowsError(try engine.run(dmlInput, failOnSqlParseError: true))
    }

    func testInner() throws {
        var infos = [TestInfo]()
        for index in 0..<500 {
            infos.append(TestInfo(one: Int32(index), two: "Test\(index)"))
        }

        var info2s = [TestInfo2]()
        for index in 0..<1000 {
            info2s.append(TestInfo2(five: Int32(index * 5), six: "Test\(index)"))
        }

        let dmlInput = """
                    SELECT tab.one as three, tab.two, tab2.five as five, tab2.six
                    FROM tab INNER JOIN tab2 ON tab.one = tab2.five
                    """
        let engine = QueryEngine()
        engine.add(try ArrowEncoder.encode(infos)!, name: "tab")
        engine.add(try ArrowEncoder.encode(info2s)!, name: "tab2")
        let queryRb: RecordBatch = try engine.run(dmlInput)!
        XCTAssertEqual(queryRb.length, UInt(100))
    }

    func testInnerComplex() throws {
        var infos = [TestInfo]()
        for index in 0..<500 {
            infos.append(TestInfo(one: Int32(index), two: "Test\(index)"))
        }

        var info2s = [TestInfo2]()
        for index in 0..<1000 {
            info2s.append(TestInfo2(five: Int32(index * 5), six: "Test\(index)"))
        }

        let dmlInput = """
                    SELECT tab.one as three, tab.two, tab2.five as five, tab2.six
                    FROM tab INNER JOIN tab2 ON tab.one = tab2.five and (tab.one = 5 or tab.one = 10)
                    """
        let engine = QueryEngine()
        engine.add(try ArrowEncoder.encode(infos)!, name: "tab")
        engine.add(try ArrowEncoder.encode(info2s)!, name: "tab2")
        let queryRb: RecordBatch = try engine.run(dmlInput)!
        XCTAssertEqual(queryRb.length, UInt(2))
    }

    func testLeftOuter() throws {
        var infos = [TestInfo]()
        for index in 0..<500 {
            infos.append(TestInfo(one: Int32(index), two: "Test\(index)"))
        }

        var info2s = [TestInfo2]()
        for index in 0..<1000 {
            info2s.append(TestInfo2(five: Int32(index % 2), six: "Test\(index)"))
        }

        let dmlInput = """
                    SELECT tab.one as three, tab.two, tab2.five as five, tab2.six
                    FROM tab LEFT OUTER JOIN tab2 ON tab.one = tab2.five
                    """
        let engine = QueryEngine()
        engine.add(try ArrowEncoder.encode(infos)!, name: "tab")
        engine.add(try ArrowEncoder.encode(info2s)!, name: "tab2")
        let queryRb: RecordBatch = try engine.run(dmlInput)!
        let decoder = ArrowDecoder(queryRb)
        let results = try decoder.decode(TestResult.self)
        XCTAssertEqual(results.count, 1498)
    }

    func testRightOuter() throws {
        var infos = [TestInfo]()
        for index in 1..<500 {
            infos.append(TestInfo(one: Int32(index), two: "Test\(index)"))
        }

        var info2s = [TestInfo2]()
        for index in 0..<1000 {
            info2s.append(TestInfo2(five: Int32(index % 10), six: "Test\(index)"))
        }

        let dmlInput = """
                    SELECT tab.one as three, tab.two, tab2.five as five, tab2.six
                    FROM tab RIGHT OUTER JOIN tab2 ON tab.one = tab2.five
                    """
        let engine = QueryEngine()
        engine.add(try ArrowEncoder.encode(infos)!, name: "tab")
        engine.add(try ArrowEncoder.encode(info2s)!, name: "tab2")
        let queryRb: RecordBatch = try engine.run(dmlInput)!
        let decoder = ArrowDecoder(queryRb)
        let results = try decoder.decode(TestResult.self)
        XCTAssertEqual(results.count, 1000)
    }
}
