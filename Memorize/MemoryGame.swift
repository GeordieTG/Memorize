//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Geordie Gibson on 11/10/23.
//

import Foundation

struct MemoryGame<CardContent> {
    
    private(set) var cards: Array<Card>

    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<max(2,numberOfPairsOfCards) {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
        
    func choose(_ card: Card) {
        
    }
    
    mutating func shuffle() {
        cards.shuffle()
        print(cards)
    }
    
    struct Card {
        let content: CardContent
        var isFaceUp = true
        var isMatched = false
    }
}
