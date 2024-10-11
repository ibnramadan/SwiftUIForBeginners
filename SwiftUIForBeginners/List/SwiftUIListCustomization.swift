//
//  SwiftUIListCustomization.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 08/10/2024.
//

import SwiftUI

struct SwiftUIListCustomization: View {
    @State  private var fruits: [String] = [
        "Apple", "Banana", "Mango", "Kiwi"
    ]
    var body: some View {
        NavigationStack {
            List {
                Section("Static Views Header") {
                    Text("Hello, World!")
                        .listRowBackground(Color.blue)
                    Button("Click Me") {
                        
                    }
                    .listRowBackground(Color.black)
                    TextField("Placeholder", text: .constant(""))
                        .listRowBackground(Color.green)
                    Toggle(isOn: .constant(false)) {
                        Text("Toggle Title")
                    }
                    .listRowBackground(Color.pink)
                    Slider(value: .constant(100))
                    NavigationLink("Go To Details", value: "Details")
                        .listRowBackground(Color.purple)
                }
               // .listRowSeparator(.hidden)
                .listRowSeparatorTint(.orange)
                .listRowInsets(.init(top: 10, leading: 10, bottom: 10, trailing: 10))
                .foregroundStyle(.red)
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                } header: {
                    Label("Dynamic view Header", systemImage: "sparkle")
                } footer: {
                    Text("Dynamic Footer")
                }
                .headerProminence(.increased)
                .listRowBackground(Capsule()
                    .fill(.gray.gradient))
                
            }
            .scrollContentBackground(.hidden)
            .background(
                Image(._0)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            )
            .navigationTitle("List")
            .navigationDestination(for: String.self) { stringValue in
                Text(stringValue)
            }
        }
        
    }
}

#Preview {
    SwiftUIListCustomization()
}
