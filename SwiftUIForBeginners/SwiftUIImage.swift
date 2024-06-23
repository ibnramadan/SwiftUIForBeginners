//
//  SwiftUIImage.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 22/06/2024.
//

import SwiftUI

struct SwiftUIImage: View {
    var body: some View {
        
        // system icons
//        Image(systemName: "pencil.tip.crop.circle.badge.plus.fill")
//           // .renderingMode(.original)
//            .symbolRenderingMode(.palette)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//           // .scaledToFit()
//           // .font(.system(size: 100))
//            .foregroundStyle(.red, .blue)
//            .frame(width: 300, height: 300, alignment: .center)
        
        // custom image
//        Image(.bird)
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .frame(width: 300, height: 300, alignment: .center)
//            .clipped()
//            .clipShape(Circle())
//            .shadow(color: .black, radius: 10)
        
        // custom icon
        Image(.plane)
           // .renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300, alignment: .center)
            .foregroundStyle(.red)
            .clipped()
            .clipShape(Circle())
            .shadow(color: .black, radius: 10)
        
    }
}

#Preview {
    SwiftUIImage()
}
