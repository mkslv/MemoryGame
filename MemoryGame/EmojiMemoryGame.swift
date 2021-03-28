//  ViewModel
//  EmojiMemoryGame.swift
//  MemoryGame
//
//  Created by Max Kiselyov on 3/27/21.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> =
        MemoryGame<String>(numberOfPairsOfCards: 2) {_ in "😇"}
        
    

    // MARK: - Acces to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s):
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
