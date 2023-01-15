import CoreGraphics

public extension CGSize {
  init(_ width: CGFloat, _ height: CGFloat) {
    self.init(width: width, height: height)
  }
  
  var rect: CGRect {
    CGRect(x: 0, y: 0, width: width, height: height)
  }
  
  static func / (lhs: CGSize, rhs: CGSize) -> CGSize {
      return CGSize(width: lhs.width / rhs.width, height: lhs.height / rhs.height)
  }
  
  static func / (lhs: CGSize, rhs: CGFloat) -> CGSize {
      return CGSize(width: lhs.width / rhs, height: lhs.height / rhs)
  }
  
  static func * (lhs: CGSize, rhs: CGSize) -> CGSize {
      return CGSize(width: lhs.width * rhs.width, height: lhs.height * rhs.height)
  }
  
  static func * (lhs: CGSize, rhs: CGFloat) -> CGSize {
      return CGSize(width: lhs.width * rhs, height: lhs.height * rhs)
  }
  
  static func + (lhs: CGSize, rhs: CGSize) -> CGSize {
    CGSize(width: lhs.width + rhs.width, height: lhs.height + rhs.height)
  }
}
