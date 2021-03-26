//
//  ContentView.swift
//  MemoryGame
//
//  Created by Max Kiselyov on 3/25/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            
            ForEach (0..<4) { index in
                CardView()
            }
            
        }
        .padding()
        .foregroundColor(.orange)
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
            RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
            Text("😇")
        }
    }
}
























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
