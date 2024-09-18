//
//  SwiftUILink.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 18/09/2024.
//

import SwiftUI

struct SwiftUILink: View {
    var body: some View {
        VStack(spacing: 40) {
            Link("Watch my videos on youtube", destination: URL(string: "https://www.youtube.com/@MohamedRamadanHussien")!)
                .foregroundStyle(.red)
                .font(.title2)
                .bold()
            
            Link("Watch my videos on youtube", destination: URL(string: "https://www.youtube.com/@MohamedRamadanHussien")!)
                .foregroundStyle(.red)
                .font(.title2)
                .bold()
                .buttonStyle(.bordered)
            
            Link("Watch my videos on youtube", destination: URL(string: "https://www.youtube.com/@MohamedRamadanHussien")!)
                .foregroundStyle(.red)
                .font(.title2)
                .bold()
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
            
            Link(destination: URL(string: "https://www.youtube.com/@MohamedRamadanHussien")!) {
                Image(systemName: "link")
            }
            
            Link(destination: URL(string: "https://www.youtube.com/@MohamedRamadanHussien")!) {
                Text("Link")
                    .padding()
                    .background(.red)
                    .clipShape(Circle())
            }
            
            Link(destination: URL(string: "https://www.youtube.com/@MohamedRamadanHussien")!) {
                Label("Watch my videos on youtube", systemImage: "play.rectangle.fill")
                    .padding()
                    .background(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            Link("open setting", destination: URL(string: "app-settings:")!)
        }
    }
}

#Preview {
    SwiftUILink()
}
