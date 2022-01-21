//
//  SearchButtonView.swift
//  Aegis-NewViews
//
//  Created by Samuel Noye on 16/01/2022.
//

import SwiftUI

struct SearchButtonView: View {
    //MARK: - PROPERETIES
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @State private var tabSelection = 0
    let buttonLabel = ["Recent","Favorites","Speed","Distance","Duration"]
  
    //MARK: - BOBY
    var body: some View {
        HStack(spacing: 5){
            ForEach(0..<5){num in
                Button(action:{
                    // action
                    tabSelection = num
                }){
                    Text(buttonLabel[num])
                        .font(Font.custom("poppins.extralight", size: Screen.screenSize.height < 700 ? 10 : 12))
                        .foregroundColor(tabSelection == num ? Color.white : Color("TextColor"))
                        .padding(.horizontal, Screen.screenSize.height < 600 ? 8 : 14)
                        .padding(.vertical,7)
                }//: Button
                //.padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/,Screen.screenSize.height < 500 ? 0 : 1)
                .padding(.top, getTopPaddingValue(screenHeight: Screen.screenSize.height))
                .background(
                    Capsule()
                        .fill(tabSelection == num ? Color("MainColor") : Color("HomePageColor"))
                )
             }
         }
        
      
        
        
        
    }
    func getTopPaddingValue(screenHeight: CGFloat) -> CGFloat {
        if screenHeight < 700 {
            return    140
        } else if (screenHeight > 700 && screenHeight <= 750) {
            return 155
        } else if (screenHeight > 750 && screenHeight <= 850) {
            return 172
        }
        return 180
    }
}
