//
//  SwiftUITabView.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 12/10/2024.
//

import SwiftUI

struct SwiftUITabView: View {
    @State private var selectionTab = 1
    var body: some View {
        TabView(selection: $selectionTab) {
            
            HomeView(selectionTab: $selectionTab)
                .tabItem {
                    Label("Home", systemImage: "house")
                    //                    Image(systemName: "house")
                    //                    Text("Home")
                }.tag(0)
            
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }.tag(1)
            
            Text("Notifications Screen")
                .tabItem {
                    Label("Notifications", systemImage: "bell")
                }.tag(2)
            
            Text("Profile Screen")
                .tabItem {
                    Label("Profile", systemImage: "person")
                }.tag(3)
            
            ListView()
                .tabItem {
                Label("List View", systemImage: "heart")
            }.tag(4)
            
               // .toolbarBackground(Color.green, for: .tabBar)
                .toolbarColorScheme(.dark, for: .tabBar)
        }
        .tint(.red)
        
    }
}

struct HomeView: View {
    @Binding var selectionTab: Int
    var body: some View {
        VStack {
            Text("Home Screen")
            Button("Go To Profile") {
                selectionTab = 3
            }
        }
    }
}

struct ListView: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { index in
                NavigationLink("List Item \(index)") {
                    Text("Details Screen")
                }
            }
        }
    }
}

struct ExploreView: View {
    var body: some View {
        TabView {
            Image(._0)
            Image(._1)
            Image(._2)
        }
        .frame(height: 300)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    SwiftUITabView()
}
