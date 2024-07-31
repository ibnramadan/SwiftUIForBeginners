//
//  SwiftUIExtractViews.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 31/07/2024.
//

import SwiftUI

struct SwiftUIExtractViews: View {
    @State var counter = 0
    
    var background: some View {
        LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
    
    var body: some View {
        ZStack {
            // 1.Background
            background
            
            VStack {
                // 2.Counter Title
                TitleView(title: "Counter")
                
                // 3.Counter Text
                CounterText(counter: counter)
                
                // 4.Counter Buttons
                HStack(spacing: 60) {
                    CounterButton(symbol: "-", color: .red) {
                        counter -= 1
                    }
                    
                    CounterButton(symbol: "+", color: .green) {
                        counter += 1
                    }
                }
            }
        }
    }
}

#Preview {
    SwiftUIExtractViews()
}

struct TitleView: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .bold()
            .foregroundStyle(.white)
    }
}

struct CounterText: View {
    let counter: Int
    var body: some View {
        Text(String(counter))
            .font(.system(size: 72, weight: .bold, design: .rounded))
            .foregroundStyle(.white)
            .padding()
            .background(
                Circle()
                    .fill(.red)
                    .shadow(radius: 10)
            )
    }
}

struct CounterButton: View {
    let symbol: String
    let color: Color
    let action: () -> Void
    var body: some View {
        Button(action:
                action
               , label: {
            Text(symbol)
                .font(.system(size: 32, weight: .bold, design: .rounded))
                .foregroundStyle(color)
                .frame(width: 60, height: 60, alignment: .center)
                .background(
                    Circle()
                        .fill(.white)
                        .shadow(radius: 10)
                )
        })
    }
}
