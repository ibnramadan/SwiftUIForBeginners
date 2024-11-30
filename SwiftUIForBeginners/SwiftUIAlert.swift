//
//  SwiftUIAlert.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 29/11/2024.
//

import SwiftUI

struct SwiftUIAlert: View {
    @State private var isAlertShown: Bool = false
    @State private var pincode: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var myError: MyError? = nil
    var body: some View {
//        Button("Logout") {
//            // Action
//            isAlertShown = true
//        }.alert("Logout", isPresented: $isAlertShown) {
//            Button("Ok") {
//                
//            }
//            Button("Cancel", role: .cancel) {
//                
//            }
//            Button("yes,Logout", role: .destructive) {
//                
//            }
//            
//        } message: {
//            Text("Are you sure you want to logout")
//        }
//        .buttonStyle(.bordered)
        
//        Button("Submit") {
//            // Action
//            isAlertShown = true
//        }.alert("Confirm", isPresented: $isAlertShown) {
//            TextField("PicCode", text: $pincode)
//
//        } message: {
//            Text("Are you sure you want to logout")
//        }
//        .buttonStyle(.bordered)
        
        VStack {
            TextField("Username", text: $username)
            TextField("Password", text: $password)
            Button("Login") {
                if username.isEmpty {
                    myError = .emptyUsername
                    isAlertShown = true
                } else if password.isEmpty {
                    myError = .emptyPassword
                    isAlertShown = true
                } else {
                    // Call api
                }
            }
            .buttonStyle(.borderedProminent)
            .alert(isPresented: $isAlertShown, error: myError) { error in
                switch error {
                case .emptyUsername:
                    TextField("Enter Username", text: $username)
                case .emptyPassword:
                    TextField("Enter password", text: $password)
                }
            } message: { error in
                Text(error.errorMsg)
            }

        }
        .textFieldStyle(.roundedBorder)
        .padding()
    }
}

#Preview {
    SwiftUIAlert()
}

enum MyError: LocalizedError {
    case emptyUsername
    case emptyPassword
    
    var errorDescription: String? {
        switch self {
        case .emptyUsername:
            "Invalid Username"
        case .emptyPassword:
            "Invalid Password"
        }
    }
    
    var errorMsg: String {
        switch self {
        case .emptyUsername:
            "Please Enter Valid Username"
        case .emptyPassword:
            "Please Enter Valid Password"
        }
    }
}
