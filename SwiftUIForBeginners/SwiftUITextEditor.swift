//
//  SwiftUITextEditor.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 20/12/2024.
//

import SwiftUI

struct SwiftUITextEditor: View {
    @State private var text: String = "Placeholder"
    @State private var charCount: Int = 0
    @State private var wordCount: Int = 0
    private let maxCharacterLimit = 100
    var body: some View {
        VStack(spacing: 20) {
          //  TextEditor(text: $text)
            TextEditor(text: Binding(
                get: { text },
                set: { newValue in
                    text = String(newValue.prefix(maxCharacterLimit))
                }
            ))
                .font(.title)
                .foregroundStyle(.white)
                .lineSpacing(20)
                .autocapitalization(.words)
                .autocorrectionDisabled()
                .scrollContentBackground(.hidden)
                .background(Color.red)
                .frame(height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .onChange(of: text) { oldValue, newValue in
                    charCount = newValue.count
                    wordCount = newValue.split(separator: " ").count
                }
            
            HStack {
              Text("\(maxCharacterLimit - charCount)")
            }
            
            HStack {
             Text("Character: \(charCount)")
                Spacer()
             Text("Words: \(wordCount)")
            }
            
            HStack {
                Button("Clear") {
                    text = ""
                }.buttonStyle(.bordered)
                
                Spacer()
                
                Button("Copy") {
                    UIPasteboard.general.string = text
                }.buttonStyle(.bordered)
            }
            Spacer()
        } .padding()
    }
}

#Preview {
    SwiftUITextEditor()
}
