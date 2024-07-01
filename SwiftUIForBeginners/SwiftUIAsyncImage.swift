//
//  SwiftUIAsyncImage.swift
//  SwiftUIForBeginners
//
//  Created by mohamed ramadan on 01/07/2024.
//

import SwiftUI

struct SwiftUIAsyncImage: View {
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
//        AsyncImage(url: url, content: { image in
//            image.resizable()
//                .scaledToFit()
//                .clipShape(Circle())
//                .frame(width: 300, height: 300, alignment: .center)
//        }, placeholder: {
//            ProgressView()
//        })
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                    ProgressView()
            case .success(let image):
                image.resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
            case .failure:
                Image(systemName: "photo").resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300, height: 300, alignment: .center)
            @unknown default:
                ProgressView()
            }
        }
        
    }
}

#Preview {
    SwiftUIAsyncImage()
}
