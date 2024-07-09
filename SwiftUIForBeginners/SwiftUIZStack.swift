//
//  SwiftUIZStack.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 09/07/2024.
//

import SwiftUI

struct SwiftUIZStack: View {
    var body: some View {
//        ZStack(alignment: .bottomLeading) {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 300, height: 300, alignment: .center)
//            
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 200, height: 200, alignment: .center)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 100, height: 100, alignment: .center)
//            
//            Text("Hello World")
//                .font(.title)
//                .bold()
//        }
        
//        ZStack(alignment: .center) {
//            Rectangle()
//                .fill(.red)
//                .frame(width: 300, height: 300, alignment: .center)
//            
//            VStack {
//                
//                ZStack {
//                    Circle()
//                        .fill(.blue)
//                    .frame(width: 100, height: 100, alignment: .center)
//                    
//                    Text("1")
//                        .font(.title)
//                }
//                
//                Circle()
//                    .fill(.green)
//                    .frame(width: 100, height: 100, alignment: .center)
//            }
//            
//            
//        }
        
        VStack(spacing: 100) {
            ZStack {
                Circle()
                    .fill(.red)
                    .frame(width: 200, height: 200, alignment: .center)
                
                Text("1")
                    .font(.largeTitle)
                    .bold()
            } // Element 1
            
            Text("1")
                .font(.largeTitle)
                .bold()
                .background {
                    Circle()
                        .fill(.red)
                        .frame(width: 200, height: 200, alignment: .center)
                } //  Ellement #2
            
            Circle()
                .fill(.red)
                .frame(width: 200, height: 200, alignment: .center)
                .overlay {
                    Text("1")
                        .font(.largeTitle)
                        .bold()
                } //  Ellement #3
            
        }
    }
}

#Preview {
    SwiftUIZStack()
}
