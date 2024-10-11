//
//  SwiftUIListChildren.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 07/10/2024.
//

import SwiftUI

struct SwiftUIListChildren: View {
    var body: some View {
        List(Folder.items(), children: \.subFolder) { folder in
            Text(folder.name)
        }
    }
}

struct Folder: Identifiable {
    var id = UUID()
    var name: String
    var subFolder: [Folder]? = nil
    
    static func items() -> [Folder] {
        [
            Folder(name: "Folder1", subFolder: [
                Folder(name: "SubFolder1"),
                Folder(name: "SubFolder2")
            ]),
            Folder(name: "Folder2"),
            Folder(name: "Folder3", subFolder: [
                Folder(name: "SubFolder3"),
                Folder(name: "SubFolder4")
            ]),
        ]
    }
}
#Preview {
    SwiftUIListChildren()
}
