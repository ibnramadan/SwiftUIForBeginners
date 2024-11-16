//
//  SwiftUIControlGroup.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 16/11/2024.
//

import SwiftUI

struct SwiftUIControlGroup: View {
    @State private var counter: Int = 0
    var body: some View {
        ScrollView {
            VStack {
                Text("\(counter)")
                    .font(.title)
                    .bold()
                
                ControlGroup {
                    Button {
                        counter -= 1
                    } label: {
                        Label("Decrement", systemImage: "minus")
                    }
                    
                    Button {
                        counter += 1
                    } label: {
                        Label("Increment", systemImage: "plus")
                    }
                }
                .controlGroupStyle(.automatic)
                .padding()
                
                ControlGroup {
                    Button {
                        counter -= 1
                    } label: {
                        Label("Decrement", systemImage: "minus")
                    }
                    
                    Button {
                        counter += 1
                    } label: {
                        Label("Increment", systemImage: "plus")
                    }
                }
                .controlGroupStyle(.navigation)
                .padding()
                
                Menu("Menu Title") {
                    Button("Button1") {
                        
                    }
                    Button("Button1") {
                        
                    }
                    ControlGroup {
                        Button {
                            counter -= 1
                        } label: {
                            Label("Decrement", systemImage: "minus")
                        }
                        
                        Button {
                            counter += 1
                        } label: {
                            Label("Increment", systemImage: "plus")
                        }
                    }
                    .controlGroupStyle(.automatic)
                    .padding()
                    
                    ControlGroup {
                        Button {
                            counter -= 1
                        } label: {
                            Label("Decrement", systemImage: "minus")
                        }
                        
                        Button {
                            counter += 1
                        } label: {
                            Label("Increment", systemImage: "plus")
                        }
                    }
                    .controlGroupStyle(.compactMenu)
                    .padding()
                    
                    Menu("Palette Menu") {
                        ControlGroup("PaletteCG") {
                            Toggle(isOn: .constant(true)) {
                                Label("red", systemImage: "circle")
                            }.tint(.red)
                            
                            Toggle(isOn: .constant(true)) {
                                Label("blue", systemImage: "circle")
                            }.tint(.blue)
                        }
                        .controlGroupStyle(.palette)
                    }
                }
            }
        }
    }
}

#Preview {
    SwiftUIControlGroup()
}
