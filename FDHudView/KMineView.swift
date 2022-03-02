//
//  KMineView.swift
//  FDHudView
//
//  Created by Fillinse on 2022/3/2.
//

import SwiftUI

struct KMineView: View {
    var body: some View {
       VStack() {
          Text("KMineView")
             .padding()
          Button {
            showHud()
          } label: {
             Text("show hud")
          }
          Button {
             hideHud()
          } label: {
             Text("hide hud")
          }
          .padding(.top,40)
          Spacer() 
       }
    }
   func showHud() {
      let names = ["KMineView","showHud","manager","hideHud"]
      FDHud.showMessage("\(names[Int(arc4random())%4])")

   }
   func hideHud() {
      FDHud.hideHud()
   }
}

struct KMineView_Previews: PreviewProvider {
    static var previews: some View {
        KMineView()
    }
}
