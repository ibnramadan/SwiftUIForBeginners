//
//  SwiftUIList.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 07/10/2024.
//

import SwiftUI

struct SwiftUIList: View {
    @State  private var fruits: [String] = [
        "Apple", "Banana", "Mango", "Kiwi"
    ]
    var body: some View {
        NavigationStack {
            List {
                Section("Static Views Header") {
                    Text("Hello, World!")
                    Button("Click Me") {
                        
                    }
                    TextField("Placeholder", text: .constant(""))
                    Toggle(isOn: .constant(false)) {
                        Text("Toggle Title")
                    }
                    Slider(value: .constant(100))
                    NavigationLink("Go To Details", value: "Details")
                }
                
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                } header: {
                    Label("Dynamic view Header", systemImage: "sparkle")
                } footer: {
                    Text("Dynamic Footer")
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
    SwiftUIList()
}
