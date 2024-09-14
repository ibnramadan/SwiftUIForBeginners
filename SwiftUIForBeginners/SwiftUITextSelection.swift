//
//  SwiftUITextSelection.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 14/09/2024.
//

import SwiftUI

struct SwiftUITextSelection: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello, World!")
                .textSelection(.disabled)
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
        }.textSelection(.enabled)
    }
}

#Preview {
    SwiftUITextSelection()
}
