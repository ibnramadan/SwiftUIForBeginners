//
//  SwiftUIOnAppear.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 10/08/2024.
//

import SwiftUI

struct SwiftUIOnAppear: View {
    @State var isAnimate: Bool = false
    @State var title = "Hello, World!"
    var body: some View {
//        Text(title)
//            .font(.title)
//            .bold()
//            .onAppear {
//                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//                    title = "Text Appeared"
//                }
//            }
        
        Image(.plane)
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200, alignment: .center)
            .foregroundStyle(.blue)
            .offset(x: isAnimate ? 100 : -100, y: 0)
            .animation(.easeInOut(duration: 1.5).repeatForever(), value: isAnimate)
            .onAppear {
                isAnimate = true
            }
    }
}

#Preview {
    SwiftUIOnAppear()
}
