//
//  SwiftUIOverlay.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 11/07/2024.
//

import SwiftUI

struct SwiftUIOverlay: View {
    var body: some View {
        
//        Circle()
//            .fill(.red)
//            .frame(width: 200, height: 200, alignment: .center)
//            .overlay {
//                Text("1")
//                    .font(.system(size: 40))
//                    .foregroundStyle(.white)
//                    .bold()
//            }
//            .background(
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(.gray)
//                    .frame(width: 300, height: 300, alignment: .center)
//            )
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundStyle(.white)
            .background(
                Circle()
                    .fill(.red)
                    .frame(width: 200, height: 200, alignment: .center)
                    .overlay(alignment: .bottomTrailing, content: {
                        Circle()
                            .fill(.blue)
                            .frame(width: 70, height: 70, alignment: .center)
                            .overlay(
                                Text("1")
                                    .font(.largeTitle)
                                    .foregroundStyle(.white)
                            )
                    })
            )
        
    }
}

#Preview {
    SwiftUIOverlay()
}
