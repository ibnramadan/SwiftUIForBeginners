//
//  SwiftUIHStack.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 07/07/2024.
//

import SwiftUI

struct SwiftUIHStack: View {
    var body: some View {
        
        HStack(alignment: .top, spacing: 10) {
            
            VStack {
                Text("Hello")
                    .font(.largeTitle)
                Text("world")
                    .font(.largeTitle)
            }
            
            
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
            
            Spacer()
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 80, height: 80)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 60, height: 60)
        }
        
    }
}

#Preview {
    SwiftUIHStack()
}
