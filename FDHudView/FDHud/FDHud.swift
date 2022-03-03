//
//  FDHud.swift
//  FDHudView
//
//  Created by Fillinse on 2022/3/2.
//

import SwiftUI

public final class FDHud: ObservableObject {
   static let manager = FDHud()
   ///这里设置了两个展示的属性，因为展示的过程有动画，但是动画过程中，即加载HUD的过程中，下面的界面还能响应，所以这里的处理是一开始就把底图(透明挡板)放上,然后中间内容做动画
   @Published var isShow: Bool = false
   @Published var isShow2: Bool = false
   @Published var hudType = FDHudType.text
   var text: String?
   private var isAnimating = false

   public static func show(_ text: String) {
      manager.show(text)
   }
   public static func showMessage(_ text: String) {
      manager.showMessage(text)
   }
   public static func showLoading() {
      manager.showLoading()
   }
   public static func hideHud() {
      manager.hideHud()
   }
   private func show(_ text: String) {
      self.text = text
      hudType = .textIcon
      isShow = true
      withAnimation {
         isShow2 = true
      }
      startDispatchTime()
   }
   private func showMessage(_ text: String) {
      self.text = text
      hudType = .text
      isShow = true
      withAnimation {
         isShow2 = true
      }
      startDispatchTime()
   }
   private func showLoading() {
      hudType = .icon
      isShow = true
      withAnimation {
         isShow2 = true
      }
   }
   private func hideHud() {
      withAnimation {
         isShow = false
      }
   }
   private func startDispatchTime() {
      if isAnimating {
         return
      }
      isAnimating = true
      DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
         withAnimation {
            self.isShow = false
            self.isShow2 = false
            self.isAnimating = false
         }
      }
   }
}
extension View {
   func showFDHud() -> some View {
      self.modifier(FHud())
   }
}
struct FHud: ViewModifier {
   func body(content: Content) -> some View {
      ZStack(alignment: .center) {
         content
         FDHUDView()
            .zIndex(1)
      }
   }
}
