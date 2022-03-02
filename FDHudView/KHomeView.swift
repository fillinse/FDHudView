//
//  KHomeView.swift
//  FDHudView
//
//  Created by Fillinse on 2022/3/2.
//

import SwiftUI

struct KHomeView: View {
   var body: some View {
      VStack {
         Text("KHomeView")
            .padding()
         Button {
            showHud()
         } label: {
            Text("show hud")
         }
      }
   }
   func showHud() {
      FDHud.show("请求中。。。")
   }
}

struct KHomeView_Previews: PreviewProvider {
    static var previews: some View {
        KHomeView()
    }
}
