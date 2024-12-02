//
//  SwiftUIPopover.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 02/12/2024.
//

import SwiftUI

struct SwiftUIPopover: View {
    @State private var isPopovershown = false
    @State private var selectedItem: String? = nil
    var body: some View {
        Button {
            isPopovershown = true
        } label: {
            HStack {
                Text(selectedItem == nil ? "Select Item" : "You Selected ")
                Text(selectedItem ?? "")
            }
            
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
        .popover(isPresented: $isPopovershown, attachmentAnchor: .point(.top), arrowEdge: .bottom) {
            PopoverView(selectedItem: $selectedItem, isPopovershown: $isPopovershown)
                .frame(width: 200, height: 300)
                .presentationCompactAdaptation(.popover)
        }
       
    }
}

struct PopoverView: View {
    @Binding var selectedItem: String?
   // @Environment(\.dismiss) var dismiss
    @Binding  var isPopovershown: Bool

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(1..<11) { index in
                    Label("Item\(index)", systemImage: "heart.fill")
                        .foregroundStyle(.red)
                        .onTapGesture {
                            selectedItem = "Item\(index)"
                           // dismiss()
                            isPopovershown = false
                        }
                }
            }
        }.padding()
    }
}
#Preview {
    SwiftUIPopover()
}
