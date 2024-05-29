//
//  SwiftUIText.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 29/05/2024.
//

import SwiftUI

struct SwiftUIText: View {
    var body: some View {
        Text("Hello, World, this is designed for beginners who want to learn SwiftUI, i hope it will be enjoyable for you.")
         //   .font(.title)
          //  .fontWeight(.bold)
            .font(.system(size: 32, weight: .bold, design: .default))
          //  .bold()
      //      .underline(color: .red)
      //      .strikethrough(color: .blue)
       //     .italic()
            .multilineTextAlignment(.center)
         //   .baselineOffset(-30)
            .kerning(2)
//            .lineLimit(2)
            .border(.black, width: 2)

            .frame(width: 400, height: 400, alignment: .center)
            .minimumScaleFactor(0.6)
            .foregroundStyle(.red)
        
        
    }
}

#Preview {
    SwiftUIText()
}
