//
//  SwiftUIBinding.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 02/08/2024.
//

import SwiftUI

// parent
struct SwiftUIBinding: View {
    @State var counter = 0
    
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
        
        ButtonView(counterVar: $counter)
    }
}

// subview
struct ButtonView: View {
    @Binding var counterVar: Int
    var body: some View {
        Button {
            counterVar += 1
        } label: {
            
            Text("+")
                .font(.system(size: 32, weight: .bold, design: .rounded))
                .foregroundStyle(.red)
                .padding()
                .background(
                    Circle()
                        .fill(.white)
                        .shadow(radius: 10)
                )
        }
    }
}

#Preview {
    SwiftUIBinding()
}
