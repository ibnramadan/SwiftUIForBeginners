//
//  SwiftUITapGesture.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 14/09/2024.
//

import SwiftUI

struct SwiftUITapGesture: View {
    @State private var isTapped = false
    var body: some View {
        VStack(spacing: 40) {
            
            Button {
                // Action
                isTapped.toggle()
            } label: {
                Text("Button Title")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .frame(height: 80)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 10).fill(.red))
            }
            
            Text("Button Title")
                .foregroundStyle(.white)
                .font(.largeTitle)
                .frame(height: 80)
                .frame(maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 10).fill(.red))
                .onTapGesture {
                    isTapped.toggle()
                }

            Circle()
                .fill(isTapped ? .green : .red)
                .frame(width: 200, height: 200)
            //            .onTapGesture(count: 2) {
            //                isTapped.toggle()
            //            }
            //            .gesture(TapGesture().onEnded({
            //                isTapped.toggle()
            //            }))
        }.padding()
    }
}

#Preview {
    SwiftUITapGesture()
}
