//
//  SwiftUICapsule.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 07/06/2024.
//

import SwiftUI

struct SwiftUICapsule: View {
    var body: some View {
        Capsule(style: .circular)
            .foregroundStyle(.red)
//            .fill(.red)
//            .stroke(Color.blue, lineWidth: 30)
        //    .stroke(Color.blue, style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [40]))
            .frame(width: 300, height: 200, alignment: .center)
    }
}

#Preview {
    SwiftUICapsule()
}
