//
//  SwiftUILazyVGrid.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 31/08/2024.
//

import SwiftUI

struct SwiftUILazyVGrid: View {
    
    let columns: [GridItem] = [
        //        GridItem(.fixed(60), spacing: nil, alignment: nil),
        //        GridItem(.fixed(60), spacing: nil, alignment: nil),
        //        GridItem(.fixed(60), spacing: nil, alignment: nil),
        //        GridItem(.fixed(60), spacing: nil, alignment: nil)
        
        //        GridItem(.fixed(10), spacing: nil, alignment: nil),
        //        GridItem(.flexible(minimum: 50, maximum: 100), spacing: nil, alignment: nil),
        //        GridItem(.flexible(), spacing: nil, alignment: nil)
        
        GridItem(.adaptive(minimum: 50, maximum: 100), spacing: nil, alignment: nil)
    ]
    var body: some View {
        
        ScrollView {
            
            LazyVGrid(columns: columns,
                      spacing: 20,
                      pinnedViews: .sectionHeaders) {
                
                Section {
                    ForEach(1..<32) { index in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray.gradient)
                            .frame(height: 100)
                            .overlay(
                                Text("\(index)")
                                    .font(.title)
                                    .bold()
                            )
                    }
                } header: {
                    Text("January")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red.gradient)
                }
                
                Section {
                    ForEach(1..<29) { index in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray.gradient)
                            .frame(height: 100)
                            .overlay(
                                Text("\(index)")
                                    .font(.title)
                                    .bold()
                            )
                    }
                } header: {
                    Text("February")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.yellow.gradient)
                }
                
                
            }
            
        }
    }
}

#Preview {
    SwiftUILazyVGrid()
}
