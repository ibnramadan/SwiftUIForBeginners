//
//  CustomFontKey.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 15/02/2025.
//

import SwiftUI

private struct CustomFontKey: EnvironmentKey {
    static let defaultValue: Font = .body
}

extension EnvironmentValues {
    var customFont: Font {
        get { self[CustomFontKey.self] }
        set { self[CustomFontKey.self] = newValue }
    }
}

extension View {
    func customFont(_ font: Font) -> some View {
        environment(\.customFont, font)
    }
}
