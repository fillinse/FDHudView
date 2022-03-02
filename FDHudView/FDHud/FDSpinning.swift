//
//  FDSpinning.swift
//  FDHudView
//
//  Created by Fillinse on 2022/3/2.
//

import SwiftUI

extension View {
   func spinning() -> some View {
      self.modifier(FDSpinning())
   }
}
struct FDSpinning: ViewModifier {
   @State var isVisible = false
   func body(content: Content) -> some View {
      content
         .rotationEffect(Angle(degrees: isVisible ? 360 : 0))
         .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
         .onAppear { self.isVisible = true }
   }
}


