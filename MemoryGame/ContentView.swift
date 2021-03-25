//
//  ContentView.swift
//  MemoryGame
//
//  Created by Max Kiselyov on 3/25/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return ZStack(content: {
            RoundedRectangle(cornerRadius: 10.0)
            Text("Hello, world!")
                .padding()
        })
    }
}



























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
