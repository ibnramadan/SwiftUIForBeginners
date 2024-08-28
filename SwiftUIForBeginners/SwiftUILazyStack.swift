//
//  SwiftUILazyStack.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 28/08/2024.
//

import SwiftUI

struct SwiftUILazyStack: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<1000) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.blue)
                        .frame(height: 250)
                        .padding()
                        .shadow(radius: 10)
                        .overlay {
                            Text("\(index)")
                                .font(.largeTitle)
                                .bold()
                        }
                        .onAppear {
                            print("\(index) loaded")
                        }
                }
            }
        }
    }
}

#Preview {
    SwiftUILazyStack()
}
