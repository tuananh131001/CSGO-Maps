//
//  CalloutMapView.swift
//  CSGO Maps
//
//  Created by William on 28/07/2022.
//

import SwiftUI

struct CalloutMapView: View {
    var map: GameMap
    var body: some View {
        VStack (alignment: .leading){
            
            // Callout Map
            NavigationLink(destination: ImageZoomView(name: map.name!.lowercased() + "callout")) {
                Image(map.name!.lowercased() + "callout").resizable().scaledToFit()
            }.isDetailLink(false)
            // Check map has lower
            if UIImage(named: map.name!.lowercased() + "lowercallout") != nil {
                // use your image (myImage), it exists!
                NavigationLink(destination: ImageZoomView(name: map.name!.lowercased() + "lowercallout")) {
                    Image(map.name!.lowercased() + "lowercallout").resizable().scaledToFit()
                }.isDetailLink(false)

            }
        }
    }
}

struct CalloutMapView_Previews: PreviewProvider {
    static var previews: some View {
        let model = MapModel()
        CalloutMapView(map: model.maps[0])
    }
}
