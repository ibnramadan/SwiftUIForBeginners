//
//  SwiftUITextField.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 08/08/2024.
//

import SwiftUI

struct SwiftUITextField: View {
    @State var username: String = ""
    @State var age: String = "" 
    @State var phone: String = ""
    @State var email: String = ""
    @State var pass: String = ""
    @State var number: Double = 0
    var body: some View {
        
        VStack(spacing: 30) {
            
//            TextField("Username", text: $username)
//                .textFieldStyle(.automatic)
//            
//            TextField("Age", text: $age)
//                .textFieldStyle(.plain)
//            
//            TextField("Phone", text: $phone)
//                .textFieldStyle(.roundedBorder)
//            
//            VStack(alignment: .leading) {
//                Text("Email")
//                TextField("Email", text: $email)
//                    .padding()
//                    .background(Color(.systemGray6))
//                    .border(Color.black)
//            }
            
            TextField("Username", text: $username)
                .textFieldStyle(CapsuleTextField())
                .keyboardType(.alphabet)
                .foregroundStyle(.red)
                .font(.system(size: 40))
                .disabled(false)
                .textContentType(.name)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.characters)
                .onSubmit {
                    print(username)
                }
            
            
            TextField("Age", text: $age)
                .textFieldStyle(CapsuleTextField())
                .keyboardType(.numberPad)
            TextField("Phone", text: $phone)
                .textFieldStyle(CapsuleTextField())
                .keyboardType(.phonePad)
            TextField("Email", text: $email)
                .textFieldStyle(CapsuleTextField())
            
            SecureField("Password", text: $pass)
            
            TextField("Number", value: $number, format: .number)
            Spacer()
        }.padding()
    }
}

struct CapsuleTextField: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .frame(height: 60)
            .background(Color(.systemGray6))
            .clipShape(Capsule())
    }
}
#Preview {
    SwiftUITextField()
}
