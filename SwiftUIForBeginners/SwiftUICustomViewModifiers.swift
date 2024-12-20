//
//  SwiftUICustomViewModifiers.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 19/12/2024.
//

import SwiftUI

struct SwiftUICustomViewModifiers: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                PostView()
                PostView()
                PostView()
            }
            .padding(.vertical)
        }
        .background(Color.gray.opacity(0.1))
    }
}

struct PostView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            HStack {
                Image(systemName: "person.circle.fill")
                    .font(.title)
                Text("Mohamed Ramadan")
                    .fontWeight(.medium)
                Spacer()
                
            }
        
            Text("Just posted my first SwiftUI Post! #swiftui")
            
            HStack(spacing: 16) {
               // Like
                Button {
                    
                } label: {
                    Label("Like", systemImage: "heart")
                }
                .interactionButtonModifier()
                
                // Comment
                
                Button {
                    
                } label: {
                    Label("Comment", systemImage: "message")
                }
                .interactionButtonModifier(with: .blue)
            
                // Share
                Button {
                    
                } label: {
                    Label("Share", systemImage: "square.and.arrow.up")
                }
                .interactionButtonModifier(with: Color.green)
                
            }
        }
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: .gray.opacity(0.2), radius: 5)
        .padding()
    }
}

struct InteractionButtonModifier: ViewModifier {
    var foregroundColor: Color
    func body(content: Content) -> some View {
        content
            .font(.system(size: 14, weight: .medium))
            .foregroundStyle(foregroundColor)
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.gray.opacity(0.1)))
    }
}

extension View {
    func interactionButtonModifier(with color: Color = .gray) -> some View {
        modifier(InteractionButtonModifier(foregroundColor: color))
    }
}
#Preview {
    SwiftUICustomViewModifiers()
}
