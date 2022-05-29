//
//  ContentView.swift
//  MemoryGame
//
//  Created by Max Kiselyov on 5/7/22.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🐲", "👹", "👾", "🤖", "👻", "👺", "🎃", "🦀"]
    @State var emojiCount = 6
    
    var body: some View {
        VStack{
            HStack{
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(cardContent: emoji)
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack{
                remove
                Spacer()
                add
            }
            .padding(.horizontal)
            .font(.largeTitle)
        }
        .padding(.horizontal)
    }
    
    var remove: some View {
        Button {
            if emojiCount > 2{
                emojiCount -= 2
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
    var add: some View{
        Button {
            if emojiCount < emojis.count{
                emojiCount += 2
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = false
    var cardContent: String
    let shape = RoundedRectangle(cornerRadius: 20)
    
    var body: some View {
        ZStack {
                
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(cardContent).font(.largeTitle)
            } else {
                shape.fill()
            }
            
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
    }
}
