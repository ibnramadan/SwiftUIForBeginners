//
//  SwiftUISlider.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 13/09/2024.
//

import SwiftUI

struct SwiftUISlider: View {
    @State private var sliderValue: Double = 100
    @State private var sliderValueChanged: Bool = false
    var body: some View {
        VStack {
            Text("Slider Value: \(sliderValue)")
//            Slider(value: $sliderValue)
//                .tint(.red)
            
//            Slider(value: $sliderValue, in: 0...100, step: 5)
            
            
            Slider(value: $sliderValue,
                   in: 100...500,
                   step: 100) {
                Text("Slider")
            } minimumValueLabel: {
                Text("100")
            } maximumValueLabel: {
                Text("500")
            } onEditingChanged: { sliderChanged in
                print("\(sliderChanged)")
                sliderValueChanged = sliderChanged
            }
            .foregroundStyle(.blue)
            .font(.largeTitle)
            .tint(.orange)
            
            Circle()
                .fill(.red)
                .frame(width: sliderValue, height: sliderValue, alignment: .center)
                .opacity(sliderValueChanged ? 1 : 0)
        }.padding()
    }
}

#Preview {
    SwiftUISlider()
}
