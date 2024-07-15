//
//  SwiftUIPadding.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 15/07/2024.
//

import SwiftUI

struct SwiftUIPadding: View {
    var body: some View {
//        Text("Hello, World!")
//            .font(.largeTitle)
//            .bold()
//            .background(.red)
//            //.padding(.vertical, 20)
//            .padding(EdgeInsets(top: 10, leading: 20, bottom: 30, trailing: 40))
//            .background(.blue)
        
        VStack {
            Rectangle()
                .fill(.green)
            HStack {
                Circle()
                    .fill(.red)
                Circle()
                    .fill(.blue)
            }
        }
        .padding(.horizontal, 20)
//        .padding(.vertical, 60)
//        .ignoresSafeArea()
    }
}

#Preview {
    SwiftUIPadding()
}
