//
//  SwiftUIAnimation.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 05/12/2024.
//

import SwiftUI

struct SwiftUIAnimation: View {
    @State private var isAnimating: Bool = false
    var body: some View {
        VStack {
            // View
//            RoundedRectangle(cornerRadius: 50)
//                .fill(isAnimating ? Color.blue : Color.red)
//                .frame(width: 200, height: 300)
//                .scaleEffect(isAnimating ? 1.5 : 1.0)
//                .rotation3DEffect(.degrees(isAnimating ? 180.0 : 0), axis: (x: 0, y: 1, z: 0))
//                .opacity(isAnimating ? 0.5 : 1.0)
//                .offset(y: isAnimating ? 200.0 : 0)
//                .animation(Animation.default.repeatCount(2, autoreverses: false), value: isAnimating)
            
            VStack {
                Text("Linear")
                Circle()
                    .frame(width: 50, height: 50)
                    .offset(x: isAnimating ? 150.0 : -150.0)
                    .animation(.linear(duration: 5.0), value: isAnimating)
            }
            .foregroundStyle(.red)
            
            VStack {
                Text("EaseIn")
                Circle()
                    .frame(width: 50, height: 50)
                    .offset(x: isAnimating ? 150.0 : -150.0)
                    .animation(.easeIn(duration: 5.0), value: isAnimating)
            }
            .foregroundStyle(.blue)
            
            VStack {
                Text("EaseOut")
                Circle()
                    .frame(width: 50, height: 50)
                    .offset(x: isAnimating ? 150.0 : -150.0)
                    .animation(.easeOut(duration: 5.0), value: isAnimating)
            }
            .foregroundStyle(.green)
            
            VStack {
                Text("EaseInOut")
                Circle()
                    .frame(width: 50, height: 50)
                    .offset(x: isAnimating ? 150.0 : -150.0)
                    .animation(.easeInOut(duration: 5.0), value: isAnimating)
            }
            .foregroundStyle(.yellow)
            
            VStack {
                Text("Spring")
                Circle()
                    .frame(width: 50, height: 50)
                    .offset(x: isAnimating ? 150.0 : -150.0)
                    .animation(.spring(duration: 5.0, bounce: 0.5, blendDuration: 0.5), value: isAnimating)
            }
            .foregroundStyle(.pink)
            
            VStack {
                Text("Smooth")
                Circle()
                    .frame(width: 50, height: 50)
                    .offset(x: isAnimating ? 150.0 : -150.0)
                    .animation(.smooth(duration: 5.0), value: isAnimating)
            }
            .foregroundStyle(.black)
            
            VStack {
                Text("Snappy")
                Circle()
                    .frame(width: 50, height: 50)
                    .offset(x: isAnimating ? 150.0 : -150.0)
                    .animation(.snappy(duration: 5.0), value: isAnimating)
            }
            .foregroundStyle(.purple)
            
            Spacer()
            Button("Animate") {
                isAnimating.toggle()
            }
        }
        .padding(40)
    }
}

#Preview {
    SwiftUIAnimation()
}
