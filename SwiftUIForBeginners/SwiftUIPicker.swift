//
//  SwiftUIPicker.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 25/10/2024.
//

import SwiftUI

enum Colors: String, CaseIterable, Identifiable {
    case red
    case blue
    case green
    case yellow
    case orange
    
    var id: Self {
        self
    }
    
    var colorName : Color {
        switch self {
        case .red:
            return .red

        case .blue:
            return  .blue
        case .green:
            return  .green
        case .yellow:
            return  .yellow
        case .orange:
            return  .orange
        }
    }
}
struct SwiftUIPicker: View {
    
    @State private var selecetdValue: Colors = .blue
    //    let colors: [String] = [
    //        "red", "blue", "green", "yellow", "orange"
    //    ]
    var body: some View {
        
        // Inline
        //        List {
        //            Picker(selection: $selecetdValue) {
        //                // Options
        //                ForEach(Colors.allCases) {
        //                    Text($0.rawValue)
        //                }
        //            } label: {
        //                Label("Select Color", systemImage: "paperplane.fill")
        //            }
        //            .pickerStyle(.inline)
        //            .labelsHidden()
        //        }
        // Menu
        
        //        Menu("Menu Title") {
        //            Picker(selection: $selecetdValue) {
        //                // Options
        //                ForEach(Colors.allCases) {
        //                    Text($0.rawValue)
        //                }
        //            } label: {
        //                Label("Select Color", systemImage: "paperplane.fill")
        //            }
        //            .pickerStyle(.menu)
        //        }
        // Navigation Link
        //        NavigationStack {
        //            List {
        //                Picker(selection: $selecetdValue) {
        //                    // Options
        //                    ForEach(Colors.allCases) {
        //                        Text($0.rawValue)
        //                    }
        //                } label: {
        //                    Label("Select Color", systemImage: "paperplane.fill")
        //                }
        //                .pickerStyle(.navigationLink)
        //                .padding()
        //            }
        //        }
        // Wheel
        //        Menu("menu title") {
        //            Picker(selection: $selecetdValue) {
        //                // Options
        //                ForEach(Colors.allCases) {
        //                    Text($0.rawValue)
        //                }
        //            } label: {
        //                Label("Select Color", systemImage: "paperplane.fill")
        //            }
        //            .pickerStyle(.wheel)
        //        }
        // Segmented
        //        Menu("menu Title") {
        //            Picker(selection: $selecetdValue) {
        //                // Options
        //                ForEach(Colors.allCases) {
        //                    Text($0.rawValue)
        //                }
        //            } label: {
        //                Label("Select Color", systemImage: "paperplane.fill")
        //            }
        //            .pickerStyle(.segmented)
        //        }
        // Palette
        Menu("Menu Title") {
            Picker(selection: $selecetdValue) {
                // Options
                ForEach(Colors.allCases) {
                    Image(systemName: selecetdValue == $0 ? "circle.slash.fill" : "circle.fill")
                        .tint($0.colorName)
                }
            } label: {
                Label("Select Color", systemImage: "paperplane.fill")
            }
            .pickerStyle(.palette)
           // .paletteSelectionEffect(.custom)
        }
        
    }
}

#Preview {
    SwiftUIPicker()
}
