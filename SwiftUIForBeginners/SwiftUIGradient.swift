//
//  SwiftUIGradient.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 13/06/2024.
//

import SwiftUI

struct SwiftUIGradient: View {
    var body: some View {
        
        // MARK: 1. .Gradient
        
//        Circle()
//            .fill(Color.blue.gradient)
        
        // MARK: 2. Linear Gradient
        
//        Circle()
//            .fill(
//                LinearGradient(colors: [Color.red, Color.blue, Color.green],
//                    startPoint: .top,
//                    endPoint: .bottom)
                
//                LinearGradient(stops: 
//                                [
//                                    .init(color: .red, location: 0.45),
//                                    .init(color: .blue, location: 0.55)
//                                ],
//                               startPoint: .top,
//                               endPoint: .bottom)
          //  )
        
        // MARK: 3. Radial Gradient
//        Circle()
//            .fill (
//                RadialGradient(colors: [.red, .blue, .green, .black],
//                       center: .center, startRadius: 0.0, endRadius: 200)
//        )
        // MARK: 4. Angular Gradient
        
//        Circle()
//            .fill (
//                AngularGradient(colors: [.red, .blue, .green, .black],
//                 center: .center,
//                 angle: .degrees(90))
//        )
        
        Text("SWIFT UI")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundStyle(
                LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing)
            )
    }
}

#Preview {
    SwiftUIGradient()
}
