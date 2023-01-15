import XCTest
@testable import CGExtensions

fileprivate let epsilon = 0.00001

final class CGSizeExtensionsTests: XCTestCase {
  func testAddition() throws {
     let result = CGSize(1,2) + CGSize(4, 5)
    
    XCTAssertEqual(result.width, 5, accuracy: epsilon)
    XCTAssertEqual(result.height, 7, accuracy: epsilon)
  }
}
