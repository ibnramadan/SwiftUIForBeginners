//
//  SwiftUIOnSubmit.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 10/08/2024.
//

import SwiftUI

struct SwiftUIOnSubmit: View {
    @State var inputText = ""
    var body: some View {
        TextField("Placeholder", text: $inputText)
            .padding()
            .background(Color.red)
            .clipShape(Capsule())
            .padding()
            .keyboardType(.default)
            .submitLabel(.next)
            .onSubmit {
                print("Submit Button Tapped")
            }
    }
}

#Preview {
    SwiftUIOnSubmit()
}
