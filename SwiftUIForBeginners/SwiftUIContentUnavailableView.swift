//
//  SwiftUIContentUnavailableView.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 11/01/2025.
//

import SwiftUI

struct SwiftUIContentUnavailableView: View {
    @State private var players = [
        "Abu traika", "met3b", "Wael", "Elhadary", "Sayed", "Zidan", "Hossam"
    ]
    @State private var searchText = ""
    var filteredPlayers: [String] {
        guard !searchText.isEmpty else {
           return players
        }
        return players.filter {
            $0.localizedCaseInsensitiveContains(searchText)
        }
    }
    var body: some View {
       // ContentUnavailableView.search
       // ContentUnavailableView.search(text: "SwiftUI in Arabic course")
//        ContentUnavailableView("No Internet Connection", systemImage: "wifi.exclamationmark", description: Text("Please check your connection."))
//        ContentUnavailableView {
//            Label("No Internet Connection", systemImage: "wifi.exclamationmark")
//        } description: {
//            Text("Please check your connection.")
//        } actions: {
//            Button("Refresh") {
//                
//            }.buttonStyle(.borderedProminent)
//        }
        NavigationStack {
            List(filteredPlayers, id: \.self) {
                Text($0)
            }
            .searchable(text: $searchText)
            .overlay {
                if filteredPlayers.isEmpty {
                    ContentUnavailableView.search(text: searchText)
                }
            }
            .navigationTitle("Players")
        }
    }
}

#Preview {
    SwiftUIContentUnavailableView()
}
