//
//  Color+Extension.swift
//  FDHudView
//
//  Created by Fillinse on 2022/3/2.
//

import SwiftUI

extension Color {
   static func hex(_ hex: Int) -> Color {
      return Color(UIColor.init(hex: hex)!)
   }
   static func hex(_ hex: Int,_ alpha: Float) -> Color {
      return Color(UIColor.init(hex: hex, transparency: CGFloat(alpha))!)
   }
}
extension UIColor{
   convenience init?(hex: Int, transparency: CGFloat = 1) {
      var trans = transparency
      if trans < 0 { trans = 0 }
      if trans > 1 { trans = 1 }

      let red = (hex >> 16) & 0xff
      let green = (hex >> 8) & 0xff
      let blue = hex & 0xff
      self.init(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: trans)
   }
   convenience init?(red: Int, green: Int, blue: Int, transparency: CGFloat = 1) {
      guard red >= 0 && red <= 255 else { return nil }
      guard green >= 0 && green <= 255 else { return nil }
      guard blue >= 0 && blue <= 255 else { return nil }

      var trans = transparency
      if trans < 0 { trans = 0 }
      if trans > 1 { trans = 1 }

      self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: trans)
   }
   class func hex(_ hex: Int) -> UIColor {
      return UIColor.init(hex: hex)!
   }
   class func hex(_ hex: Int,_ alpha: Float) -> UIColor {
      return UIColor.init(hex: hex, transparency: CGFloat(alpha))!
   }
}

