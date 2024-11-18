//
//  SwiftUIDisclosureGroup.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 18/11/2024.
//

import SwiftUI

struct SwiftUIDisclosureGroup: View {
    @State private var isOn:Bool =  false
    @State private var isExpanded:Bool =  false
    @State private var color: Color = .red
    var body: some View {
//        VStack {
//            DisclosureGroup("DisclosureGroup1") {
//                VStack {
//                    Text("This is my forst DisclosureGroup")
//                    Toggle("Toglle Title", isOn: $isOn)
//                    ColorPicker("Select Color", selection: $color)
//                    
//                    DisclosureGroup("NestedDisclosureGroup1") {
//                        VStack {
//                            Text("This is my forst DisclosureGroup")
//                        }
//                    }
//                }
//                
//            }
//            .tint(.red)
//            .padding()
//            .background(
//                RoundedRectangle(cornerRadius: 20)
//                    .fill(Color.brown.opacity(0.3))
//            )
//            
//            
//            DisclosureGroup("DisclosureGroup2") {
//                VStack {
//                    Text("This is my second DisclosureGroup")
//                    Toggle("Toggle Title", isOn: $isOn)
//                    ColorPicker("Select Color", selection: $color)
//                    Button(isExpanded ? "CollapseG3" : "ExpandG3") {
//                        withAnimation {
//                            isExpanded.toggle()
//                        }
//                    }.buttonStyle(.borderedProminent)
//                }
//                
//            }
//            .tint(.pink)
//            .padding()
//            .background(
//                RoundedRectangle(cornerRadius: 20)
//                    .fill(Color.red.opacity(0.3))
//            )
//            
//            DisclosureGroup(isExpanded: $isExpanded) {
//                Text("This is my second DisclosureGroup")
//                Toggle("Toggle Title", isOn: $isOn)
//                ColorPicker("Select Color", selection: $color)
//            } label: {
//                Label("DisclosureGroup3", systemImage: "heart.fill")
//            }
//            .tint(.pink)
//            .padding()
//            .background(
//                RoundedRectangle(cornerRadius: 20)
//                    .fill(Color.green.opacity(0.3))
//            )
//            Spacer()
//        }.padding()
        
        VStack {
            Form {
                VStack {
                    DisclosureGroup("DisclosureGroup1") {
                        VStack {
                            Text("This is my forst DisclosureGroup")
                            Toggle("Toglle Title", isOn: $isOn)
                            ColorPicker("Select Color", selection: $color)
                            
                        }
                    }
                    
                    DisclosureGroup("DisclosureGroup2") {
                        VStack {
                            Text("This is my second DisclosureGroup")
                            Toggle("Toggle Title", isOn: $isOn)
                            ColorPicker("Select Color", selection: $color)
                            Button(isExpanded ? "CollapseG3" : "ExpandG3") {
                                withAnimation {
                                    isExpanded.toggle()
                                }
                            }.buttonStyle(.borderedProminent)
                        }
                        
                    }
                   
                    DisclosureGroup(isExpanded: $isExpanded) {
                        Text("This is my second DisclosureGroup")
                        Toggle("Toggle Title", isOn: $isOn)
                        ColorPicker("Select Color", selection: $color)
                    } label: {
                        Label("DisclosureGroup3", systemImage: "heart.fill")
                    }
                
                }
            }
        }.padding()
    }
}

#Preview {
    SwiftUIDisclosureGroup()
}
