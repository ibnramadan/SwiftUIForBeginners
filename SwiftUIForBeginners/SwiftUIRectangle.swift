//
//  SwiftUIRectangle.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 07/06/2024.
//

import SwiftUI

struct SwiftUIRectangle: View {
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .foregroundStyle(.blue)
                .frame(width: 300, height: 200, alignment: .center)
            
            RoundedRectangle(cornerRadius: 50.0, style: .circular)
                .foregroundStyle(.blue)
                .frame(width: 300, height: 200, alignment: .center)
            
            RoundedRectangle(cornerRadius: 50.0, style: .continuous)
                .foregroundStyle(.blue)
                .frame(width: 300, height: 200, alignment: .center)
            
            UnevenRoundedRectangle(cornerRadii: RectangleCornerRadii(topLeading: 40, bottomLeading: 100, bottomTrailing: 40, topTrailing: 90))
                .foregroundStyle(.blue)
                .frame(width: 300, height: 200, alignment: .center)
            
        }
    }
}

#Preview {
    SwiftUIRectangle()
}
