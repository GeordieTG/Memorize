//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Geordie Gibson on 10/10/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            MemoryGameView(viewModel: game)
        }
    }
}
