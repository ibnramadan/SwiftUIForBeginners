//
//  SwiftUIFrame.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 13/07/2024.
//

import SwiftUI

struct SwiftUIFrame: View {
    var body: some View {
//        Text("Hello, World!")
//            .background(.blue)
//            .frame(width: 300, height: 300, alignment: .topLeading)
//            .background(.red)
        
//        ZStack {
//            Text("Hello, World!")
//                .background(.blue)
//                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//            .background(.red)
//        }
//        .frame(width: 300, height: 300, alignment: .center)
        
                Text("Hello, World!")
                    .background(.blue)
                    .frame(width: 100, height: 100, alignment: .topLeading)
                    .background(.red)
                    .frame(width: 200, height: 200, alignment: .center)
                    .background(.green)
    }
}

#Preview {
    SwiftUIFrame()
}
