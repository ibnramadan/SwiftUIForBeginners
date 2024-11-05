//
//  SwiftUIColorPicker.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 05/11/2024.
//

import SwiftUI

struct SwiftUIColorPicker: View {
    @State private var selectedColor: Color = .red
    var body: some View {
        VStack {
            Circle()
                .fill(selectedColor)
                .frame(width: 200, height: 200)
            
            ColorPicker("Change the circle color", selection: $selectedColor, supportsOpacity: false)
                .padding()
                .labelsHidden()
            
            ColorPicker(selection: $selectedColor) {
                Label("Change the circle color", systemImage: "paintpalette")
            }
            .padding()
        }
    }
}

#Preview {
    SwiftUIColorPicker()
}
