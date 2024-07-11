//
//  SwiftUIBackground.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 11/07/2024.
//

import SwiftUI

struct SwiftUIBackground: View {
    var body: some View {
//        Text("Hello, World!")
//            .frame(width: 200, height: 100, alignment: .center)
//            .background(
//              //  Color.red
////                LinearGradient(
////                    colors: [.red, .blue],
////                    startPoint: .leading,
////                    endPoint: .trailing)
//                Circle()
//                    .fill(.red)
//                    .frame(width: 200, height: 200, alignment: .center)
//            )
//            .background(
//                Circle()
//                    .fill(.blue)
//                    .frame(width: 300, height: 300, alignment: .center)
//            )
        
//        Image(systemName: "heart.fill")
//            .font(.system(size: 40))
//            .background(
//                Circle()
//                    .fill(
//                        LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing)
//                    )
//                    .frame(width: 200, height: 200, alignment: .center)
//            )
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(.red)
            .frame(width: 200, height: 200, alignment: .center)
            .background(alignment: .bottom) {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.blue)
                    .frame(width: 300, height: 300, alignment: .center)
            }
        
    }
}

#Preview {
    SwiftUIBackground()
}
