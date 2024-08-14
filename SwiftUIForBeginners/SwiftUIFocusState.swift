//
//  SwiftUIFocusState.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 14/08/2024.
//

import SwiftUI

struct SwiftUIFocusState: View {
//    @FocusState private var isUsernameFocused: Bool
//    @FocusState private var isPasswordFocused: Bool
//    @FocusState private var isEmailFocused: Bool
    
    enum LoginFields {
        case username
        case password
        case email
    }
    
    @FocusState private var selectedField: LoginFields?
    @State private var username = ""
    @State private var password = ""
    @State private var email = ""
    var body: some View {
        VStack {
            TextField("Username", text: $username)
               // .focused($isUsernameFocused)
                .focused($selectedField, equals: .username)
                .padding()
                .frame(height: 50)
                .background(Color.secondary.opacity(0.3))
                .clipShape(Capsule())
                .submitLabel(.next)
                .onSubmit {
                  //  isEmailFocused = true
                    selectedField = .email
                }
            
            TextField("Email", text: $email)
              //  .focused($isEmailFocused)
                .focused($selectedField, equals: .email)
                .padding()
                .frame(height: 50)
                .background(Color.secondary.opacity(0.3))
                .clipShape(Capsule())
                .submitLabel(.next)
                .onSubmit {
                    selectedField = .password
               //     isPasswordFocused = true
                }
            
            TextField("Passowrd", text: $password)
             //   .focused($isPasswordFocused)
                .focused($selectedField, equals: .password)
                .padding()
                .frame(height: 50)
                .background(Color.secondary.opacity(0.3))
                .clipShape(Capsule())
        }.padding()
            .onAppear {
             //   isUsernameFocused = true
                selectedField = .username
            }
    }
}

#Preview {
    SwiftUIFocusState()
}
