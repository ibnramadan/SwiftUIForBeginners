//
//  SwiftUIVStack.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 06/07/2024.
//

import SwiftUI

struct SwiftUIVStack: View {
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            
//            VStack {
//                Text("Hello")
//                Text("World")
//            }
            
           
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(.blue)
                .frame(width: 150, height: 150)
            
            Spacer()
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
            
            
        }
        
      
    }
}

#Preview {
    SwiftUIVStack()
}
