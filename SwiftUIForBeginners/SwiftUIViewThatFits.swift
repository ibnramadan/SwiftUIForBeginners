//
//  SwiftUIViewThatFits.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 03/01/2025.
//

import SwiftUI

struct SwiftUIViewThatFits: View {
    var body: some View {
//        ViewThatFits(in: .horizontal) {
//            Text("Welcome to the amazing world of SwiftUI!")
//            Text("Welcome to SwiftUI!")
//            Text("SwiftUI!")
//        }
//        .lineLimit(1)
//        .font(.largeTitle)
//        .padding()
        
        ViewThatFits {
            HStack(spacing: 20) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.blue)
                Text("Mohamed Ramadan")
                    .font(.title)
                    .bold()
                Text("IOS Engineer")
                    .foregroundStyle(.gray)
            }
            
            VStack(spacing: 20) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.blue)
                Text("Mohamed Ramadan")
                    .font(.title)
                    .bold()
                Text("IOS Engineer")
                    .foregroundStyle(.gray)
            }
        }
        .padding(100)
    }
}

#Preview {
    SwiftUIViewThatFits()
}
