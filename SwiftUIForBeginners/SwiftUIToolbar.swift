//
//  SwiftUIToolbar.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 30/09/2024.
//

import SwiftUI

struct SwiftUIToolbar: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                Text("Hello, World!")
                TextField("Placeholder", text: .constant(""))
                    .padding()
                ForEach(0..<100) { _ in
                    Circle()
                        .frame(width: 100, height: 100, alignment: .center)
                }
            }
            .toolbarTitleMenu {
                Button("Home") {
                }
                Image(systemName: "car")
                NavigationLink("Go To Details", value: "Details Screen")
            }
            
           // .toolbarColorScheme(.dark, for: .navigationBar)
            //.toolbarBackground(.red, for: .navigationBar)
           // .toolbar(.hidden, for: .bottomBar)
                .toolbar {
                    MyCustomToolbar()
                }
                .navigationTitle("Navigation Title")
                .navigationBarTitleDisplayMode(.inline)
                .navigationDestination(for: String.self) { _ in
                    Text("Details Screen")
                }
        }

    }
}

struct MyCustomToolbar: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button("Cancel") {
                
            }
        }
        
        ToolbarItem(placement: .topBarTrailing) {
            Image(systemName: "heart.fill")
        }
        
//                    ToolbarItem(placement: .bottomBar) {
//                        HStack {
//                            Image(systemName: "house")
//                            Spacer()
//                            Image(systemName: "heart.fill")
//                        }
//                    }
        ToolbarItemGroup(placement: .bottomBar) {
            Image(systemName: "house")
            HStack {
                Image(systemName: "heart.fill")
                Image(systemName: "car")
            }
        }
    }
}

#Preview {
    SwiftUIToolbar()
}
