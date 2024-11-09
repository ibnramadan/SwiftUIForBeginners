//
//  SwiftUIGroup.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 09/11/2024.
//

import SwiftUI

struct SwiftUIGroup: View {
    @State private var toggle: Bool = false
    var body: some View {
        VStack {
            isToogleView
            Group {
                Text("Text 1")
                Text("Text 2")
                Text("Text 3")
                Text("Text 4")
                Text("Text 5")
            }
            .font(.title2)
            .foregroundStyle(.red)
            
            Group {
                Text("Text 6")
                Text("Text 7")
                Text("Text 8")
                Text("Text 9")
                Text("Text 10")
            }.font(.title)
                .foregroundStyle(.blue)
        }
        .font(.title)
        .foregroundStyle(.red)
    }
    
    var isToogleView: some View {
        Group  {
            if toggle {
                Text("Hello World")
            } else {
                Image(systemName: "heart")
            }
        }
    }
}

#Preview {
    SwiftUIGroup()
}
