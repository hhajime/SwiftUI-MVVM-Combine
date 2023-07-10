//
//  AsyncImage.swift
//  SwiftUI-MVVM-Combine
//
//  Created by Ha Jong Myeong on 2023/07/11.
//

import SwiftUI

struct AsyncImage: View {
    @StateObject private var loader: ImageLoader
    private let placeholder: Image
    private let image: (UIImage) -> Image
    
    init(url: URL, @ViewBuilder placeholder: () -> Image = { Image(systemName: "photo") }, @ViewBuilder image: @escaping (UIImage) -> Image = Image.init(uiImage:)) {
        self.placeholder = placeholder()
        self.image = image
        _loader = StateObject(wrappedValue: ImageLoader(url: url, cache: Environment(\.imageCache).wrappedValue))
    }
    
    var body: some View {
        content
            .onAppear(perform: loader.load)
    }
    
    private var content: some View {
        Group {
            if loader.image != nil {
                image(loader.image!)
            } else {
                placeholder
            }
        }
    }
}
