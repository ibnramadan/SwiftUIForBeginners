//
//  SwiftUIGroupBox.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 19/11/2024.
//

import SwiftUI

struct SwiftUIGroupBox: View {
    var body: some View {
        VStack(spacing: 30) {
            CardView()
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue.opacity(0.2))
                )
            
            GroupBox {
                CardView()
            }
            
            GroupBox {
                CardView()
            } label: {
                Label("Account", systemImage: "person")
            }
            .backgroundStyle(.red.gradient)
            .groupBoxStyle(MyBoxStyle())
            Spacer()
        }.padding()
    }
}

struct MyBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .center) {
            configuration.label
                .font(.title)
                .bold()
                .foregroundStyle(.blue)
                .fontDesign(.monospaced)
            GroupBox {
                configuration.content
            }
        }
    }
}
struct CardView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Mohamed Ramadan")
                    .font(.headline)
                
                Text("Cairo, Egypt")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
                Text("Software Engineer")
                    .font(.footnote)
                    .foregroundStyle(.blue)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    SwiftUIGroupBox()
}
