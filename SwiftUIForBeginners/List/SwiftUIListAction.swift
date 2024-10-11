//
//  SwiftUIListAction.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 07/10/2024.
//

import SwiftUI

struct SwiftUIListAction: View {
    @State  private var fruits: [String] = [
        "Apple", "Banana", "Mango", "Kiwi"
    ]
    var body: some View {
        NavigationStack {
            List {
                
                Section {
                    ForEach($fruits, id: \.self, editActions: .all) { $fruit in
                        Text(fruit)
                    }
//                    ForEach(fruits, id: \.self) { fruit in
//                        Text(fruit)
//                    }
//                    .onDelete(perform: { indexSet in
//                        fruits.remove(atOffsets: indexSet)
//                    })
//                    .onMove(perform: { indices, newOffset in
//                        fruits.move(fromOffsets: indices, toOffset: newOffset)
//                    })
                } header: {
                    Label("Dynamic view Header", systemImage: "sparkle")
                } footer: {
                    Text("Dynamic Footer")
                }

                Section {
                    Button("+ Add") {
                        fruits.append("Orange")
                    }
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
    SwiftUIListAction()
}
