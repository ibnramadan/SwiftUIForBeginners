//
//  SwiftUINavigationStack.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 22/09/2024.
//

import SwiftUI

struct Item: Hashable, Identifiable {
    var id = UUID()
    var name: String
    
}
struct SwiftUINavigationStack: View {
    @State private var isHomeShown: Bool = false
    @State private var selectedItem: Item?
    @State private var path = NavigationPath()
    let items = [
        Item(name: "Item1"),
        Item(name: "Item2"),
        Item(name: "Item3")
    ]
    var body: some View {
        //        NavigationStack {
        //            VStack {
        //                NavigationLink("Go To Screen A", value: "Screen A")
        //                NavigationLink("Go To Screen B", value: "Screen B")
        //                NavigationLink("Go To Screen 1", value: 1)
        //                Button("Go To Home") {
        //                    isHomeShown.toggle()
        //                }
        //                NavigationLink(value: "Screen E") {
        //                    Text("Go To Screen E")
        //                        .padding()
        //                        .background(RoundedRectangle(cornerRadius: 10).fill(.red))
        //                }
        //
        //                List(items) { item in
        //                    Text(item.name)
        //                        .onTapGesture {
        //                            selectedItem = item
        //                        }
        //                }
        //            }
        //            .navigationDestination(for: String.self) { stringValue in
        //                DetailsView(titleString: stringValue)
        //            }
        //            .navigationDestination(for: Int.self) { intValue in
        //                DetailsView(titleString: "Screen \(intValue)")
        //            }
        //            .navigationDestination(isPresented: $isHomeShown, destination: {
        //                Text("Home Screen")
        //            })
        //            .navigationDestination(item: $selectedItem, destination: { item in
        //                DetailsView(titleString: item.name)
        //            })
        //            .navigationTitle("Root View")
        //            .navigationBarTitleDisplayMode(.large)
        //        }
        
        VStack {
            NavigationStack(path: $path) {
                VStack {
                    NavigationLink("Go To Screen A", value: "Screen A")
                    NavigationLink("Go To Screen B", value: "Screen B")
                    NavigationLink("Go To Screen 1", value: 1)
                    Button("Go To Home") {
                        isHomeShown.toggle()
                    }
                    NavigationLink(value: "Screen E") {
                        Text("Go To Screen E")
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(.red))
                    }
                    
                    List(items) { item in
                        Text(item.name)
                            .onTapGesture {
                                selectedItem = item
                            }
                    }
                }
                .navigationDestination(for: String.self) { stringValue in
                    DetailsView(titleString: stringValue, path: $path)
                }
                .navigationDestination(for: Int.self) { intValue in
                    DetailsView(titleString: "Screen \(intValue)", path: $path)
                }
                .navigationDestination(isPresented: $isHomeShown, destination: {
                    Text("Home Screen")
                })
                .navigationDestination(item: $selectedItem, destination: { item in
                    DetailsView(titleString: item.name, path: $path)
                })
                .navigationTitle("Root View")
                .navigationBarTitleDisplayMode(.large)
            }
            
            VStack {
                Text("Path")
                Text("#screens: \(path.count)")
                Button("Back One Screen") {
                    path.removeLast()
                }
                Button("Back To Root") {
                  //  path.removeLast(path.count)
                    path = NavigationPath()
                }
                Button("Go To Screen x Then y") {
                    path.append("Screen X")
                    path.append("Screen Y")
                }
            }
        }
    }
}

struct DetailsView: View {
    let titleString: String
    @Binding var path: NavigationPath
    var body: some View {
        Text(titleString)
        NavigationLink("Go To Screen C", value: "Screen C")
        NavigationLink("Go To Screen 2", value: 2)
        Button("Custom Back") {
            path.removeLast()
        }
            .navigationTitle("Details View")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarBackButtonHidden()
    }
}
#Preview {
    SwiftUINavigationStack()
}
