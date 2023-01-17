import XCTest
import CGExtensions

final class CGColor_ExtensionsTests: XCTestCase {
    func testLCH() throws {
      let c = LCH(0.01, 0.3, 0.1, 1)
      XCTAssertEqual(c.components!, [1.0, 0.0, 0.0, 1.0])
      
      let c2 = LCH(0, 0, 0, 1)
      XCTAssertEqual(c2.components!, [0, 0, 0, 1])
      
      let c3 = LCH(1, 0, 0, 1)
      XCTAssertEqual(c2.components!, [1, 1, 1, 1])
    }
}
