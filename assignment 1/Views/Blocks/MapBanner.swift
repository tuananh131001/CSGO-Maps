//
//  MapBanner.swift
//  CSGO Maps
//
//  Created by William on 01/08/2022.
//

import SwiftUI

struct MapBanner: View {
    var mapName:String
    var body: some View {
        ZStack {
            Image(mapName.lowercased() + "banner").resizable().scaledToFit().clipped().blur(radius: 5).cornerRadius(20)

            Text(mapName).font(.largeTitle).fontWeight(.heavy).shadow(color:.red,radius: 10).foregroundColor(.white) .background(Rectangle().fill(Color.red).blur(radius: 10))

        }
    }
}

struct MapBanner_Previews: PreviewProvider {
    static var previews: some View {
        MapBanner(mapName:"Mirage")
    }
}
