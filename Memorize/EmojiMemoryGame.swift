//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Geordie Gibson on 11/10/23.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    private static let emojis = ["🚗", "💍", "🐭", "🍔","💦", "🎁", "🥶", "😴", "🥸", "😱", "🏉", "🏀"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>( numberOfPairsOfCards: 10) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            } else {
                return "‼️"
            }
        }
    }
        
    @Published private var model = EmojiMemoryGame.createMemoryGame()
     
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intents
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
}
