//
//  SwiftUICircle.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 04/06/2024.
//

import SwiftUI

struct SwiftUICircle: View {
    var body: some View {
        Circle()
            .trim(from: 0.25, to: 1.0)
            .stroke(.blue, style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [30]))
//            .background {
//                Text("Loading")
//                    .font(.title)
//                    .foregroundStyle(.red)
//                    .bold()
//            }
//            .fill(.red)
//            .foregroundStyle(.blue)
            .frame(width: 300, height: 300, alignment: .center)
    }
}

#Preview {
    SwiftUICircle()
}
