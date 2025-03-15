//
//  SwiftUIEnvironment.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 15/02/2025.
//

import SwiftUI

struct SwiftUIEnvironmentParent: View {
    var body: some View {
        SwiftUIEnvironmentChild1()
            .customFont(.title)
    }
}

struct SwiftUIEnvironmentChild1: View {
    var body: some View {
        SwiftUIEnvironment()
            
    }
}

struct SwiftUIEnvironment: View {
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.customFont) private var customFont
    var body: some View {
        Text("Hello, World!")
            .font(customFont)
            .bold()
            .foregroundStyle(colorScheme == .light ? .black : .white)
            .environment(\.textCase, .uppercase)
    }
}

#Preview {
    SwiftUIEnvironmentParent()
}
