//
//  SwiftUILabel.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 14/09/2024.
//

import SwiftUI

struct SwiftUILabel: View {
    var body: some View {
        VStack {
            Label("Label with systemImage", systemImage: "apple.logo")
                .foregroundStyle(.blue)
                .font(.title)
                .padding()
                .background(.gray.gradient)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .labelStyle(myCustomLAbelStyle())
            
            Label("Label with icon", image: .instagram)
                .labelStyle(.iconOnly)
            
            Label(
                title: { Text("Label") },
                icon: {
                    Image(systemName: "42.circle")
                }
            )
            .labelStyle(.titleOnly)
            
            Label(
                title: { Text("Label") },
                icon: {
                    Circle()
                        .fill(.red)
                        .frame(width: 40, height: 40, alignment: .center)
                }
            )
            .labelStyle(.automatic)
        }.padding()
    }
}

struct myCustomLAbelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(spacing: 10) {
            configuration.icon
            configuration.title
        }
    }
}
#Preview {
    SwiftUILabel()
}
