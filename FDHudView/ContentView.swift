//
//  ContentView.swift
//  FDHudView
//
//  Created by Fillinse on 2022/3/2.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       TabView {
          KHomeView()
             .tabItem({
                Text("home")
             })
             .tag(0)
          KPlayerView()
             .tabItem({
                Text("player")
             })
             .tag(1)
          KMineView()
             .tabItem({
                Text("mine")
             })
             .tag(2)
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
