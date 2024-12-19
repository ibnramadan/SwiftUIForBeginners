//
//  SwiftUITransition.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 14/12/2024.
//

import SwiftUI

struct SwiftUITransition: View {
    @State private var showView = false
    var body: some View {
        VStack {
            Button("Show View") {
                // Show View
                withAnimation {
                    showView.toggle()
                }
            }.buttonStyle(.bordered)
            
            Spacer()
            
            if showView {
                Image(.plane)
                    .resizable()
                    .scaledToFill()
                    .frame(width: .infinity, height: 400)
                    .transition(
                      //  .opacity
                      //  .scale
                      //  .scale(scale: 0.5)
                      //  .slide
                      //  .identity
                      //  .move(edge: .leading)
                      //  .offset(x: -100, y: -200)
                       // .push(from: .top)
                       // .blurReplace
                       // .asymmetric(insertion: .scale, removal: .slide)
                   //     .opacity
                   //         .combined(with: .scale)
                   //         .combined(with: .move(edge: .bottom))
                     //   AnyTransition.scale.animation(.default)
                      //  ScaleAndRotateTransition()
                        .modifier(active: ScaleAndRotateModifier(scale: 0.0, roatation: 0.0), identity: ScaleAndRotateModifier(scale: 1.0, roatation: 360.0))
                    )
            }
        }
    }
}

struct ScaleAndRotateModifier: ViewModifier {
    var scale: CGFloat
    var roatation: Double
    
    func body(content: Content) -> some View  {
        content
            .scaleEffect(scale)
            .rotationEffect(.degrees(roatation))
    }
}

struct ScaleAndRotateTransition: Transition {
    func body(content: Content, phase: TransitionPhase) -> some View {
        content
            .rotationEffect(.degrees(phase.isIdentity ? 360 : 0))
            .scaleEffect(phase.isIdentity ? 1 : 0)
    }
}
#Preview {
    SwiftUITransition()
}
