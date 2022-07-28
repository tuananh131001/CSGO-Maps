//
//  RectangleImage.swift
//  CSGO Maps
//
//  Created by William on 28/07/2022.
//

import SwiftUI

struct RectangleImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 150, height: 150)
            .clipShape(Rectangle())
            .overlay(Rectangle().stroke(Color(.white),lineWidth: 5))
            .shadow(radius: 7)
            .cornerRadius(20)
            
            
    }
}

struct RectangleImage_Previews: PreviewProvider {
    static var previews: some View {
        RectangleImage(image: Image("cachelogo"))
    }
}
