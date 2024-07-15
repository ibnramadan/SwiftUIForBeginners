//
//  SwiftUISafeArea.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 15/07/2024.
//

import SwiftUI

struct SwiftUISafeArea: View {
    var body: some View {
//        Color.red
//            .ignoresSafeArea(edges: [.top, .bottom])
        
        ZStack {
            Color.red
                .ignoresSafeArea()
            VStack {
                Text("Top Title")
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
                
                Text("Bottom Title")
                    .font(.largeTitle)
                    .bold()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        
    }
}

#Preview {
    SwiftUISafeArea()
}
