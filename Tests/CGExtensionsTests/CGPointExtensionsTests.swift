import XCTest
@testable import CGExtensions

fileprivate let epsilon = 0.00001

final class CGPointExtensionsTests: XCTestCase {
    func testTowards() throws {
      XCTAssertEqual(CGPoint.zero.towards(other: CGPoint(x: 2, y: 2)).magnitude, sqrt(2), accuracy: epsilon)
    }
}
