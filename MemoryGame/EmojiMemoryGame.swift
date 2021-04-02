//  ViewModel
//  EmojiMemoryGame.swift
//  MemoryGame
//
//  Created by Max Kiselyov on 3/27/21.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {  // static делает эту функцию функцией типа
        let emojis: Array<String> = ["👻","🎃","💀","🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
                return emojis[pairIndex]
        }
}
    

    // MARK: - Acces to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s):
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}

