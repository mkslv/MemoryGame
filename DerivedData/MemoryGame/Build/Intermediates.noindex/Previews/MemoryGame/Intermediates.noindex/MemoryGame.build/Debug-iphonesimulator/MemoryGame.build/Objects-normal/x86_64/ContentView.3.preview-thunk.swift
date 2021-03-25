@_private(sourceFile: "ContentView.swift") import MemoryGame
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/mkiselyov/Developer/Xcode/MemoryGame/MemoryGame/ContentView.swift", line: 19)
        AnyView(__designTimeSelection(ContentView(), "#1840.[2].[0].property.[0].[0]"))
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/mkiselyov/Developer/Xcode/MemoryGame/MemoryGame/ContentView.swift", line: 12)
        AnyView(__designTimeSelection(Text(__designTimeString("#1840.[1].[0].property.[0].[0].arg[0].value", fallback: "Hello, world!"))
            .padding(), "#1840.[1].[0].property.[0].[0]"))
    #sourceLocation()
    }
}

import struct MemoryGame.ContentView
import struct MemoryGame.ContentView_Previews