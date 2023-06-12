//
//  RemoteImage.swift
//  Appetizers
//
//  Created by TanjilaNur-00115 on 26/4/23.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    @Published var image: Image? = nil
    
    func load(fromUrlString urlString: String){
        NetworkManager.shared.downloadImage(fromULString: urlString) { uiImage in
            guard let uiImage = uiImage else { return }
            
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

struct RemoteImage: View {
    var image: Image?
    var body: some View {
        image?.resizable() ?? Image("placeholder").resizable()
            
    }
}

struct AppetizerRemoteImage {
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear { imageLoader.load(fromUrlString: urlString)}
    }
}
