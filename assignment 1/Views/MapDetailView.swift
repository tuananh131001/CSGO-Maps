//
//  PlayerDetail.swift
//  assignment 1
//
//  Created by William on 12/07/2022.
//

import SwiftUI
import CoreLocation

struct MapDetailView: View {
    var map: GameMap

    var body: some View {
        ScrollView {
            VStack {
                Image(map.image!).resizable().scaledToFill()
                Text("Location")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                MapView(coordinate: map.coordinate!)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 250)
                HStack {
                    Image(map.location!.lowercased())
                    Text(map.location!)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                Text("Overview")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                Text(map.overview!)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }

        }.navigationBarTitle(Text(map.name))
    }
}

struct PlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = MapModel()
        MapDetailView(map: model.maps[0])
    }
}
