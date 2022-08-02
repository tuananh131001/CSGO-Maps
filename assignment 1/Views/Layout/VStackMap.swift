//
//  VStackMap.swift
//  CSGO Maps
//
//  Created by William on 31/07/2022.
// ref: https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-a-search-bar-to-filter-your-data#:~:text=Updated%20in%20iOS%2016,when%20used%20with%20a%20list.

import SwiftUI

struct VStackMap: View {
    var mapModel: [GameMap]
    
    var body: some View {
        // List of maps
        ForEach(mapModel) { map in
            VStack {
                
                NavigationLink(destination: MapDetailView(mapObject: map), label: {
                        // Overlap text on image
                        MapBanner(mapName: map.name ?? "N/A")
                    }
                ) }
        }
    }
    
}

struct VStackMap_Previews: PreviewProvider {
    static var previews: some View {
        VStackMap(mapModel: MapModel().maps) .environmentObject(MapModel())
    }
}
