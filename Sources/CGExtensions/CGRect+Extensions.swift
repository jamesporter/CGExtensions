import CoreGraphics

public extension CGRect {
  var size: CGSize {
    CGSize(width: width, height: height)
  }
  
  static func / (lhs: CGRect, rhs: CGSize) -> CGRect {
    CGRect(x: lhs.minX, y: lhs.minY, width: lhs.width / rhs.width, height: lhs.height / rhs.height)
  }
  
  static func / (lhs: CGRect, rhs: CGFloat) -> CGRect {
    CGRect(x: lhs.minX, y: lhs.minY, width: lhs.width / rhs, height: lhs.height / rhs)
  }
  
  static func * (lhs: CGRect, rhs: CGSize) -> CGRect {
    CGRect(x: lhs.minX, y: lhs.minY, width: lhs.width * rhs.width, height: lhs.height * rhs.height)
  }
  
  static func * (lhs: CGRect, rhs: CGFloat) -> CGRect {
    CGRect(x: lhs.minX, y: lhs.minY, width: lhs.width * rhs, height: lhs.height * rhs)
  }
  
  static func + (lhs: CGRect, rhs: CGSize) -> CGRect {
    CGRect(x: lhs.minX, y: lhs.minY, width: lhs.width + rhs.width, height: lhs.height + rhs.height)
  }
  
  var min: CGPoint {
    CGPoint(minX,minY)
  }
  
  var max: CGPoint {
    CGPoint(maxX, maxY)
  }
  
  var center: CGPoint {
    CGPoint(midX, midY)
  }
}
