//
//  SwiftUIContextMenu.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 04/12/2024.
//

import SwiftUI

struct SwiftUIContextMenu: View {
    let options = ["Option1", "Option2", "Option3"]
    @State var selectedOption: String? = nil
    var body: some View {
//        Image(._1)
//            .resizable()
//            .scaledToFill()
//            .frame(width: 300, height: 300, alignment: .center)
//            .clipShape(RoundedRectangle(cornerRadius: 20))
//            .contextMenu {
//                Button {
//                    
//                } label: {
//                    Label("Forward", systemImage: "arrowshape.turn.up.forward")
//                }
//
//                Button {
//                    
//                } label: {
//                    Label("Copy", systemImage: "doc.on.doc")
//                }
//                
//                Button {
//                    
//                } label: {
//                    Label("Info", systemImage: "info.circle")
//                }
//                
//                Button(role: .destructive) {
//                    
//                } label: {
//                    Label("Delete", systemImage: "trash")
//                }
//            } preview: {
//                Image(._3)
//            }
        NavigationStack {
            List(options, id: \.self, selection: $selectedOption) { option in
                Text(option)
            }
            .contextMenu(forSelectionType: String.self) { option in
                Button {
                    
                } label: {
                    Label("Forward", systemImage: "arrowshape.turn.up.forward")
                }
                
                Button {
                    
                } label: {
                    Label("Copy", systemImage: "doc.on.doc")
                }
                
                Button {
                    
                } label: {
                    Label("Info", systemImage: "info.circle")
                }
                
                Button(role: .destructive) {
                    
                } label: {
                    Label("Delete", systemImage: "trash")
                }
            } primaryAction: { option in
                print(option)
            }

        }
    }
}

#Preview {
    SwiftUIContextMenu()
}
