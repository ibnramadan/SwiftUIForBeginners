//
//  SwiftUIButton.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 20/07/2024.
//

import SwiftUI

struct SwiftUIButton: View {
    var body: some View {
        VStack(spacing: 20) {
        
            Button("automatic Title") {
                // Action Code
                print("Button tapped!")
            }
            .font(.title)
            .fontWeight(.bold)
            .buttonStyle(.automatic)
            .tint(.red)
            
            Button("bordered Title") {
                // Action Code
                print("Button tapped!")
            }
            .font(.title)
            .fontWeight(.bold)
            .buttonStyle(.bordered)
            .tint(.red)
            .foregroundStyle(.blue)
            
            Button("borderedProminent Title") {
                // Action Code
                print("Button tapped!")
            }
            .font(.title)
            .fontWeight(.bold)
            .buttonStyle(.borderedProminent)
            .tint(.red)
            .foregroundStyle(.green)
            
            Button("borderless Title") {
                // Action Code
                print("Button tapped!")
            }
            .font(.title)
            .fontWeight(.bold)
            .buttonStyle(.borderless)
            
            Button("plain Title") {
                // Action Code
                print("Button tapped!")
            }
            .font(.title)
            .fontWeight(.bold)
            .buttonStyle(.plain)
            
            Button("CustomButtonStyle Title") {
                // Action Code
                print("Button tapped!")
            }
            .font(.title)
            .fontWeight(.bold)
            .buttonStyle(CustomButtonStyle())
            
            Button("borderedProminent Title") {
                // Action Code
                print("Button tapped!")
            }
            .font(.title)
            .fontWeight(.bold)
            .controlSize(.large)
            .buttonBorderShape(.capsule)
            .buttonStyle(.borderedProminent)
            .tint(.red)
            .foregroundStyle(.green)
            .disabled(false)
            
            
            Button {
                // Action Code
            } label: {
                VStack {
                    Image(systemName: "square.and.arrow.up")
                    Text("Text Button")
                        .font(.title)
                        .bold()
                }
            }
            
            Button {
                // Action Code
            } label: {
                    Image(systemName: "square.and.arrow.up")
            }
            .buttonStyle(.bordered)
            
            Button {
                // Action Code
            } label: {
                 Circle()
                    .fill(.white)
                    .frame(height: 100)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.title)
                            .foregroundStyle(.red)
                            
                    )
            }
        }
    }
}

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title)
            .bold()
            .padding()
            .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(.red))
    }
}
#Preview {
    SwiftUIButton()
}
