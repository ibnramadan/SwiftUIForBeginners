//
//  SwiftUIGrid.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 04/09/2024.
//

import SwiftUI

struct SwiftUIGrid: View {
    var body: some View {
        
        Grid(alignment: .center, horizontalSpacing: 20, verticalSpacing: 20) {
            // Row1
            GridRow {
               // Cell1
                RoundedRectangle(cornerRadius: 10)
                    .fill(.red.gradient)
                    .frame(height: 100)
                    .gridCellColumns(1)
                
               // Cell2
                Text("Cell#2")
                    .font(.title)
                    .bold()
                    .gridColumnAlignment(.trailing)
                    .gridCellAnchor(.topLeading)
                
               // Cell3
                VStack {
                    Image(systemName: "heart.fill")
                    Button("Like") {
                        
                    }.buttonStyle(.borderedProminent)
                }
            }
            
            Text("Hello World!")
                .font(.largeTitle)
                .bold()
            
            // Row2
            GridRow {
                // Cell1
//                VStack {
//                    Image(systemName: "heart.fill")
//                    Button("Like") {
//                        
//                    }.buttonStyle(.borderedProminent)
//                }
                
                Color.clear
                    .gridCellUnsizedAxes(.vertical)
                // Cell2
                RoundedRectangle(cornerRadius: 10)
                    .fill(.green.gradient)
                    .frame(height: 100)
                
                // Cell3
                Image(systemName: "swift")
                    .resizable()
                    .scaledToFit()

            }
            
            Divider()
            
            // Row3
            GridRow {
                // Cell1
                Circle()
                    .fill(.blue.gradient)
                    .frame(height: 100)
                // Cell2
                Text("R3C2")
                    .font(.title)
                    .bold()
                // Cell3
                Capsule()
                    .fill(.blue.gradient)
                    .frame(height: 60)
            }
        }.padding()
    }
}

#Preview {
    SwiftUIGrid()
}
