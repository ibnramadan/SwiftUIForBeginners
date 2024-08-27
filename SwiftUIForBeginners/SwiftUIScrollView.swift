//
//  SwiftUIScrollView.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 26/08/2024.
//

import SwiftUI

struct SwiftUIScrollView: View {
    
    @State private var scrollPosition: Int? = nil
    var body: some View {
//        ScrollView(.vertical) {
//            VStack() {
//                ForEach(0..<10) { index in
//                    RoundedRectangle(cornerRadius: 25.0)
//                        .fill(.blue)
//                        .padding()
//                        .frame(height: 250)
//                        .shadow(radius: 10)
//                        .overlay {
//                            Text("\(index)")
//                                .bold()
//                        }
//                } // ForEach
//            } // VStack
//        } // ScrollView
        
//        ScrollView(.horizontal) {
//            HStack() {
//                ForEach(0..<10) { index in
//                    RoundedRectangle(cornerRadius: 25.0)
//                        .fill(.blue)
//                        .padding()
//                        .frame(width: 300, height: 250)
//                        .shadow(radius: 10)
//                        .overlay {
//                            Text("\(index)")
//                                .bold()
//                        }
//                } // ForEach
//            } // VStack
//        } // ScrollView
        
//        ScrollView([.vertical, .horizontal]) {
//            VStack {
//                ForEach(0..<10) { row in
//                    ScrollView(.horizontal) {
//                        HStack {
//                            ForEach(0..<5) { col in
//                                RoundedRectangle(cornerRadius: 25.0)
//                                    .fill(.blue)
//                                    .padding()
//                                    .frame(width: 300, height: 250)
//                                    .shadow(radius: 10)
//                                    .overlay {
//                                        Text("\(row), \(col)")
//                                            .bold()
//                                    }
//                            }
//                        }
//                    }
//                }
//            }
//        }
        
        VStack {
            Button {
                scrollPosition = 5
            } label: {
                Text("Scroll To: ")
            }

            ScrollView(.horizontal) {
                        HStack(spacing: 0) {
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.blue)
                                    .padding()
                                    .frame(width: 300, height: 250)
                                    .shadow(radius: 10)
                                    .overlay {
                                        Text("\(index)")
                                            .bold()
                                    }
                                 //   .containerRelativeFrame(.horizontal, alignment: .center)
                                    .scrollTransition(.animated, axis: .horizontal, transition: { view, phase in
                                        view
                                            .opacity(phase.isIdentity ? 1 : 0.5)
                                            .scaleEffect(phase.isIdentity ? 1 : 0.75)
                                            .rotationEffect(.radians(phase.value))
                                    })
                                    .id(index)
                            } // ForEach
                        } // VStack
                    } // ScrollView
                    .scrollIndicators(.hidden)
                    .scrollTargetLayout()
                .scrollTargetBehavior(.viewAligned)
                .scrollPosition(id: $scrollPosition, anchor: .center)
        }
    }
}

#Preview {
    SwiftUIScrollView()
}
