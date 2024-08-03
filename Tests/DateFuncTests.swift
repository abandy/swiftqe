/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */
import Foundation
import XCTest
import Arrow
@testable import swiftqe

final class DateFuncTests: XCTestCase {
    func testDATE() throws {
        let dateFunc1 = FieldScalarFuncDef.getAggFunc(.DATE, inputTypes: [.VARCHAR])!
        XCTAssertNotNil(dateFunc1.getValue(["2014-06-02"]))
        let dateFunc2 = FieldScalarFuncDef.getAggFunc(.DATE, inputTypes: [.VARCHAR])!
        XCTAssertNil(dateFunc2.getValue(["2014-06"]))
        let dateFunc3 = FieldScalarFuncDef.getAggFunc(.DATE, inputTypes: [.VARCHAR])!
        XCTAssertNotNil(dateFunc3.getValue(["2024-08-07T15:12:30"]))
        let dateFunc4 = FieldScalarFuncDef.getAggFunc(.DATE, inputTypes: [.VARCHAR])!
        XCTAssertNotNil(dateFunc4.getValue(["2024-08-07 00:00:00"]))
        let dateFunc5 = FieldScalarFuncDef.getAggFunc(.DATE, inputTypes: [.VARCHAR])!
        XCTAssertNotNil(dateFunc5.getValue(["2024-08-07T15:12:30+05:00"]))
        let dateFunc6 = FieldScalarFuncDef.getAggFunc(.DATE, inputTypes: [.VARCHAR])!
        XCTAssertNotNil(dateFunc6.getValue(["2024-08-06 20:00:30 -05:00"]))
    }
}
