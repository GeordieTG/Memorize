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
            let emojis = ["🚗", "💍", "🐭", "🍔"]
            ForEach(emojis.indices, id: \.self) { index in
                CardView(text: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    let text: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.stroke(lineWidth: 2)
                Text(text).font(.largeTitle)
            } else {
                base
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
