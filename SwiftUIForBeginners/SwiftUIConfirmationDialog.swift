//
//  SwiftUIConfirmationDialog.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 04/12/2024.
//

import SwiftUI

struct SwiftUIConfirmationDialog: View {
    @State private var isDialogShown = false
    var body: some View {
        Button("Logout") {
            isDialogShown = true
        }
        .buttonStyle(.bordered)
        .controlSize(.large)
        .confirmationDialog("Are you sure?", isPresented: $isDialogShown, titleVisibility: .visible) {
            Button("Logout", role: .destructive) {
                
            }
        } message: {
            Text("See u soon")
        }
        
    }
}

#Preview {
    SwiftUIConfirmationDialog()
}
