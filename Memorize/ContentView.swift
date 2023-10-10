//
//  ContentView.swift
//  Memorize
//
//  Created by Geordie Gibson on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(text: "🚗", isFaceUp: true)
            CardView(text: "💍")
            CardView(text: "🐭")
            CardView(text: "🍔")
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    
    var text: String
    var isFaceUp: Bool = false
    
    var body: some View {
        if isFaceUp {
            ZStack {
                RoundedRectangle(cornerRadius: 12).fill(.white)
                RoundedRectangle(cornerRadius: 12).stroke(lineWidth: 2)
                Text(text).font(.largeTitle)
            }
        } else {
            RoundedRectangle(cornerRadius: 12)
         }
    }
}




  
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
