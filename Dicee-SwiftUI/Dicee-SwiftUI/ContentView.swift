//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Keri Levesque on 9/11/20.
//  Copyright © 2020 Keri Levesque. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //create overlay stack
        ZStack {
        Image("background") // add image
            .resizable() // resize image
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/) // allow edges to go full screen
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: 1)
                    DiceView(n: 1)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}

struct DiceView: View {
    
    let n: Int //do not want hardcoded
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


