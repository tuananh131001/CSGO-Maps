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
            Image(mapName.lowercased() + "banner").resizable().scaledToFit().clipped().blur(radius: 2).cornerRadius(20)

            Text(mapName).font(.largeTitle).fontWeight(.heavy).shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/).foregroundColor(.white)

        }
    }
}

struct MapBanner_Previews: PreviewProvider {
    static var previews: some View {
        MapBanner(mapName:"Mirage")
    }
}
