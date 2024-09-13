//
//  SwiftUIStepper.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 13/09/2024.
//

import SwiftUI

struct SwiftUIStepper: View {
    @State private var ageValue = 15
    @State private var circleSize = 100.0
    var body: some View {
        VStack {
            Stepper("Age:\(ageValue)", value: $ageValue)
                .font(.largeTitle)
                .foregroundStyle(.red)
             //   .labelsHidden()
                .fixedSize()
            
            Stepper(value: $ageValue) {
                HStack {
                    Image(systemName: "figure")
                    Text("Age:\(ageValue)")
                }
                .font(.largeTitle)
                .foregroundStyle(.red)
            }
            
            Stepper("Age:\(ageValue)", value: $ageValue, step: 3)
                .font(.largeTitle)
                .foregroundStyle(.red)
            
            Stepper("Age:\(ageValue)", value: $ageValue, in: 15...30, step: 5)
                .font(.largeTitle)
                .foregroundStyle(.red)
            
            Stepper("Circle size:\(circleSize)") {
                // increment
                circleSize += 10.0
            } onDecrement: {
                // decrement
                circleSize -= 10.0
            }
            .font(.largeTitle)
            .foregroundStyle(.blue)
            
            Spacer()
            Circle()
                .fill(.red)
                .frame(width: circleSize, height: circleSize, alignment: .center)
            Spacer()
        }.padding()
    }
}

#Preview {
    SwiftUIStepper()
}
