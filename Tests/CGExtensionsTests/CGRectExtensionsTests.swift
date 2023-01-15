import XCTest
@testable import CGExtensions

fileprivate let epsilon = 0.00001

final class CGRectExtensionsTests: XCTestCase {
  func testDivision() throws {
    let a = CGRect(x: 2, y: 2, width: 4, height: 4)
    let b = a / 2
    
    XCTAssertEqual(b.width, 2, accuracy: epsilon)
  }
}
