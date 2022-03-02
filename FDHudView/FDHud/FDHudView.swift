//
//  LHudView.swift
//  FDHudView
//
//  Created by Fillinse on 2022/3/2.
//
enum FDHudType {
   case text
   case icon
   case textIcon
}
import SwiftUI

struct FDHUDView: View {
   @ObservedObject var viewModel = FDHud.manager
   var body: some View {
      ZStack {
         if viewModel.isShow {
            RoundedRectangle(cornerRadius: 0)
               .fill(Color.blue)
            if viewModel.isShow2 {
               VStack {
                  if viewModel.hudType == .text {
                     Text(viewModel.text ?? "")
                        .foregroundColor(.white)
                  } else if viewModel.hudType == .icon {
                     Image(systemName: "rays").imageScale(.large).spinning()
                        .padding([.top,.leading,.trailing,.bottom],10)
                        .foregroundColor(Color.white)
                  } else {
                     Image(systemName: "rays").imageScale(.large).spinning()
                        .padding([.top,.leading,.trailing,.bottom],10)
                        .foregroundColor(Color.white)
                     Text(viewModel.text ?? "")
                        .foregroundColor(.white)
                  }
               }
               .padding(.horizontal, 0)
               .padding(12)
               .background(
                  RoundedRectangle(cornerRadius: 4).fill(Color.hex(0x000000, 0.7))
                     .shadow(color: Color(.black).opacity(0.16), radius: 12, x: 0, y: 5)
               )
            }
         }
      }
      .ignoresSafeArea()
   }
}

