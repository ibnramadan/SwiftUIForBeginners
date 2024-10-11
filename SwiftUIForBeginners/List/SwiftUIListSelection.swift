//
//  SwiftUIListSelection.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 07/10/2024.
//

import SwiftUI

struct SwiftUIListSelection: View {
    @State  private var fruits: [String] = [
        "Apple", "Banana", "Mango", "Kiwi"
    ]
    @State private var selection = Set<String>()
    var body: some View {
        NavigationStack {
            VStack {
                List(fruits, id: \.self, selection: $selection) { fruit in
                    Text(fruit)
                }
                if selection.isEmpty == false {
                    Text("\(selection.formatted()) selected")
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            }
            .navigationTitle("List")
            .navigationDestination(for: String.self) { stringValue in
                Text(stringValue)
            }
        }
            
    }
}

#Preview {
    SwiftUIListSelection()
}
