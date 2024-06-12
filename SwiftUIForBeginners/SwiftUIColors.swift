//
//  SwiftUIColors.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 12/06/2024.
//

import SwiftUI

struct SwiftUIColors: View {
    var body: some View {
//        Button(action: {}, label: {
//            Text("Button")
//        })
        
        var myColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        Circle()
            .fill(
              //  Color.red
              //  Color(red: 0.99, green: 0.44, blue: 0.77, opacity: 0.5)
            //    Color(myColor)
           //     Color(uiColor: .secondarySystemBackground)
                Color(.myCustom)
            )
                
    }
}

#Preview {
    SwiftUIColors()
}
