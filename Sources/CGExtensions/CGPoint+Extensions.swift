import CoreGraphics

public extension CGPoint {
  
  init(_ x: CGFloat, _ y: CGFloat) {
    self.init(x: x, y: y)
  }
  
  mutating func offset(dx: CGFloat, dy: CGFloat) -> CGPoint {
    x += dx
    y += dy
    return self
  }
  
  var magnitude: CGFloat {
    sqrt(x*x + y*y)
  }
  
  func normalized() -> CGPoint {
    let len = magnitude
    return magnitude > 0 ? self / len : CGPoint.zero
  }
  
  mutating func normalize() {
    self = normalized()
  }
  
  static func + (left: CGPoint, right: CGPoint) -> CGPoint {
    CGPoint(x: left.x + right.x, y: left.y + right.y)
  }
  
  static func += (left: inout CGPoint, right: CGPoint) {
    left = left + right
  }
  
  static func - (left: CGPoint, right: CGPoint) -> CGPoint {
    CGPoint(x: left.x - right.x, y: left.y - right.y)
  }
  
  static func -= (left: inout CGPoint, right: CGPoint) {
    left = left - right
  }
  
  static func * (left: CGPoint, right: CGPoint) -> CGPoint {
    CGPoint(x: left.x * right.x, y: left.y * right.y)
  }
  
  static func *= (left: inout CGPoint, right: CGPoint) {
    left = left * right
  }
  
  static func * (point: CGPoint, scalar: CGFloat) -> CGPoint {
    CGPoint(x: point.x * scalar, y: point.y * scalar)
  }
  
  static func *= (point: inout CGPoint, scalar: CGFloat) {
    point = point * scalar
  }
  
  static func / (left: CGPoint, right: CGPoint) -> CGPoint {
    CGPoint(x: left.x / right.x, y: left.y / right.y)
  }
  
  static func /= (left: inout CGPoint, right: CGPoint) {
    left = left / right
  }
  
  static func / (point: CGPoint, scalar: CGFloat) -> CGPoint {
    CGPoint(x: point.x / scalar, y: point.y / scalar)
  }
  
  static func /= (point: inout CGPoint, scalar: CGFloat) {
    point = point / scalar
  }
  
  func towards(other: CGPoint, amount: CGFloat = 0.5) -> CGPoint {
    self + (other - self) * amount
  }
  
  func rotated(_ radians: CGFloat) -> CGPoint {
    CGPoint(
      x: cos(radians) * self.x - sin(radians) * self.y,
      y: cos(radians) * self.y + sin(radians) * self.x
    )
  }
  
  func constrained(min minPt: CGPoint, max maxPt: CGPoint) -> CGPoint {
    CGPoint(x: max(minPt.x, min(maxPt.x, self.x)), y: max(minPt.y, min(maxPt.y, self.y)))
  }
  
  var size: CGSize {
    CGSize(x,y)
  }
}
