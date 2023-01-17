import CoreGraphics

/**
 * A decently perceptually uniform colour space, possibly correctly implemented(?)
 */
public func LCH(_ lightness: Double, _ chroma: Double, _ hue: Double, _ a: Double = 1.0) -> CGColor {
  
  let hRad = hue * 2 * Double.pi
  
  let labL = lightness
  let labA = cos(hRad) * chroma
  let labB = sin(hRad) * chroma
  
  let l = pow(labL + 0.3963377774 * labA + 0.2158037573 * labB, 3);
  let m = pow(labL - 0.1055613458 * labA - 0.0638541728 * labB, 3);
  let s = pow(labL - 0.0894841775 * labA - 1.291485548 * labB, 3);

  return CGColor(red: lrgb2rgb(+4.0767416621 * l - 3.3077115913 * m + 0.2309699292 * s),
                 green:  lrgb2rgb(-1.2684380046 * l + 2.6097574011 * m - 0.3413193965 * s),
                 blue: lrgb2rgb(-0.0041960863 * l - 0.7034186147 * m + 1.707614701 * s),
                 alpha: a)
}


fileprivate func lrgb2rgb(_ c: Double) -> Double {
    let absC = abs(c)
    if (absC > 0.0031308) {
      return sign(c) * (1.055 * pow(absC, 1.0 / 2.4) - 0.055)
    }
    return c * 12.92
}

fileprivate func sign(_ c: Double) -> Double {
  c >= 0 ? 1 : -1
}

public extension CGColor {
  var red: Double {
    components?[0].d ?? 0
  }
  
  var green: Double {
    components?[1].d ?? 0
  }
  
  var blue: Double {
    components?[2].d ?? 0
  }
  
  var alpha: Double {
    components?[3].d ?? 1
  }
}

