//
//  SwiftUISlider.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 13/09/2024.
//

import SwiftUI

struct SwiftUISlider: View {
    @State private var sliderValue: Double = 100
    var body: some View {
        VStack {
            Text("Slider Value: \(sliderValue)")
//            Slider(value: $sliderValue)
//                .tint(.red)
            
//            Slider(value: $sliderValue, in: 0...100, step: 5)
            
        }.padding()
    }
}

#Preview {
    SwiftUISlider()
}
