//
//  SwiftUIForEach.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 24/08/2024.
//

import SwiftUI

struct SwiftUIForEach: View {
    
    struct Day: Identifiable {
        let name: String
        let id = UUID()
    }
    
    let weekDays: [Day] = [
        Day(name: "Sat"),
        Day(name: "Sun"),
        Day(name: "Mon"),
        Day(name: "Tue"),
        Day(name: "Wed"),
        Day(name: "Thu"),
        Day(name: "Fri")
    ]
//    let weekDays: [String] = ["Sat", "Sun", "Mon", "Tue", "Wed", "Thu", "Fri"]
    var body: some View {
        
//        ForEach(0..<10) { index in
//            Text("Index is \(index)")
//        }
        
//        ForEach(0..<10) {
//            Text("Index is \($0)")
//        }
        
//        ForEach(weekDays, id: \.self) { day in
//            Text(day)
//                .font(.largeTitle)
//                .bold()
//        }
        
//        ForEach(weekDays.indices, id: \.self) { index in
//            Text(weekDays[index])
//                .font(.largeTitle)
//                .bold()
//        }
        
//        ForEach(0..<weekDays.count, id: \.self) { index in
//            Text(weekDays[index])
//                .font(.largeTitle)
//                .bold()
//        }
        
        ForEach(weekDays) {
            Text($0.name)
                .font(.largeTitle)
                .bold()
            
        }
    }
}

#Preview {
    SwiftUIForEach()
}
