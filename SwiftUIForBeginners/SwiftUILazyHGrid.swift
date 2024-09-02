//
//  SwiftUILazyHGrid.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 02/09/2024.
//

import SwiftUI

struct SwiftUILazyHGrid: View {
    
//    let rows: [GridItem] = [
//        GridItem(.fixed(100), spacing: 10, alignment: .leading),
//        GridItem(.fixed(100), spacing: 10, alignment: .leading),
//        GridItem(.fixed(100), spacing: nil, alignment: .leading),
//        GridItem(.flexible(minimum: 100, maximum: 200), spacing: nil, alignment: nil)
//    ]
    
//    let rows: [GridItem] = Array(repeating: GridItem(.fixed(100), spacing: nil, alignment: nil), count: 3)
    
//        let rows: [GridItem] = Array(repeating: GridItem(.flexible(minimum: 100, maximum: 200), spacing: nil, alignment: nil), count: 3)
    
    let rows: [GridItem] = [
        GridItem(.adaptive(minimum: 100, maximum: 200), spacing: nil, alignment: nil)
    ]
    var body: some View {
        
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 10, pinnedViews: .sectionHeaders) {
                // Items
                Section {
                    ForEach(0..<100) { index in
                        Image("\(index % 8)")
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                } header: {
                    Text("Section Header1")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .background(Color.red)
                }
                
                Section {
                    ForEach(0..<100) { index in
                        Image("\(index % 8)")
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                } header: {
                    Text("Section Header2")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .background(Color.red)
                }
            }
            .padding()
        } // End of ScrollView
    }
}

#Preview {
    SwiftUILazyHGrid()
}
