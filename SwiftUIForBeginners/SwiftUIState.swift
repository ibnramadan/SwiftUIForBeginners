//
//  SwiftUIState.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 27/07/2024.
//

import SwiftUI

struct SwiftUIState: View {
    
    @State private var counter = 0
    
    var body: some View {
        VStack {
            Text("Counter")
                .font(.title)
                .bold()
            
            Text(String(counter))
                .font(.title)
                .bold()
                .foregroundStyle(.red)
            
            HStack(spacing: 40) {
                Button("-") {
                    // Decrement
                  
                    counter -= 1 //  counter = counter - 1
                }
                .controlSize(.large)
                .buttonStyle(.bordered)
                
                Button("+") {
                    // Increment
                  counter += 1  // counter = counter + 1
                }
                .controlSize(.large)
                .buttonStyle(.bordered)
            }
            
        }
    }
}

#Preview {
    SwiftUIState()
}
