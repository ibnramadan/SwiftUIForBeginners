//
//  SwiftUIBadges.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 19/10/2024.
//

import SwiftUI

struct SwiftUIBadges: View {
    var body: some View {
        TabView {
            List {
                Label("Inbox", systemImage: "tray.fill")
                    .badge(100)
                Label("Sent", systemImage: "paperplane")
                    .badge(59)
            }
            .badgeProminence(.decreased)
            .tabItem {
                Label("Mail", systemImage: "envelope")
            }
            .badge("new")
            
            Text("Notifications Screen")
                .tabItem {
                    Label("Notifications", systemImage: "bell")
                }
                .badge(50)
        }
    }
}

#Preview {
    SwiftUIBadges()
}
