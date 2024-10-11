//
//  SwiftUIListStyle.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 08/10/2024.
//

import SwiftUI

struct SwiftUIListStyle: View {
    @State  private var fruits: [String] = [
        "Apple", "Banana", "Mango", "Kiwi"
    ]
    var body: some View {
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
    }
}

#Preview("Default") {
    SwiftUIListStyle()
}

#Preview("Plain") {
    SwiftUIListStyle()
        .listStyle(.plain)
}

#Preview("Inset") {
    SwiftUIListStyle()
        .listStyle(.inset)
}

#Preview("InsetGroup") {
    SwiftUIListStyle()
        .listStyle(.insetGrouped)
}

#Preview("Group") {
    SwiftUIListStyle()
        .listStyle(.grouped)
}

#Preview("sidebar") {
    SwiftUIListStyle()
        .listStyle(.sidebar)
}
