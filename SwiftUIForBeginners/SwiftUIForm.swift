//
//  SwiftUIForm.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 07/11/2024.
//

import SwiftUI

struct SwiftUIForm: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthdate = Date()
    @State private var notifications = false
    var body: some View {
        NavigationStack {
            List {
                Section("About") {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    DatePicker("Birthdate", selection: $birthdate, displayedComponents: .date)
                }
                Section {
                    Toggle("Push Notifications", isOn: $notifications)
                } header: {
                    Text("Settings")
                } footer: {
                    Text("Notifications")
                }
                
                Section {
                    LabeledContent("App Version", value: "1.0.0")
                }
                Section {
                    Button("Logout") {
                        
                    }
                }
            }
            .navigationTitle("Account")
        }
    }
}

#Preview {
    SwiftUIForm()
}
