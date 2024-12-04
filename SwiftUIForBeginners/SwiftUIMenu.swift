//
//  SwiftUIMenu.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 04/12/2024.
//

import SwiftUI

struct SwiftUIMenu: View {
    @State private var selecetdValue: Colors = .blue

    var body: some View {
        NavigationStack {
            Text("Hello, World!")
                .navigationTitle("Menu")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Menu {
                            Button {
                                
                            } label: {
                                Label("Select", systemImage: "plus.circle")
                            }
                            
                            Section("Create ") {
                                
                                ControlGroup {
                                    Button {
                                        
                                    } label: {
                                        Label("New File", systemImage: "doc")
                                    }
                                    
                                    Button {
                                        
                                    } label: {
                                        Label("New Folder", systemImage: "folder")
                                    }
                                    
                                    
                                    Button {
                                        
                                    } label: {
                                        Label("New Album", systemImage: "folder.badge.plus")
                                    }
                                }
                                .controlGroupStyle(.compactMenu)
                            }
                            Button(role: .destructive) {
                                
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                            
                            Menu("More") {
                                Button {
                                    
                                } label: {
                                    Label("Option1", systemImage: "heart.fill")
                                }
                                
                                Divider()
                                Button {
                                    
                                } label: {
                                    Label("Option2", systemImage: "heart.fill")
                                }
                            }
                            
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
                        } label: {
                            Image(systemName: "ellipsis.circle")
                        }
                        primaryAction: {
                            print("primaryAction")
                        }// End of menu
                    }
                }
        }
    }
}

#Preview {
    SwiftUIMenu()
}
