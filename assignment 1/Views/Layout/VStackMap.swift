/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Nguyen Tuan Anh
  ID: s3864077
  Created  date: 26/07/2022
  Last modified: 28/07/2022
  Acknowledgement:

*/

import SwiftUI

// VStack view for display map . It can be reusable , implement in featured view and browse view
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
