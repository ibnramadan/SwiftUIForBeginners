//
//  SwiftUIEllipse.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 05/06/2024.
//

import SwiftUI

struct SwiftUIEllipse: View {
    var body: some View {
        Ellipse()
//            .trim(from: 0.0, to: 0.9)
//            .fill(.red)
//            .foregroundStyle(.blue)
//            .stroke(.red, lineWidth: 30)
//            .stroke(.blue, lineWidth: 20)
            .stroke(.green, lineWidth: 10)
            .background {
                Text("Ellipse")
            }
//            .stroke(.blue, style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [10]))
            .frame(width: 300, height: 400, alignment: .center)
    }
}

#Preview {
    SwiftUIEllipse()
}
