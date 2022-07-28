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

            VStack(alignment: .leading, spacing: 25) {
                HeaderDetail(map: map).edgesIgnoringSafeArea(.top)
                Divider().overlay(.gray)
                InfoBarView(ctwin: map.ctwin!)
                Divider().overlay(.gray)
                Text("Origin Map")
                    .font(.title)
                    .fontWeight(.bold)
                MapView(coordinate: map.coordinate!)
                    .frame(height: 250).cornerRadius(15)

                Divider().overlay(.gray)
                Group {
                    Text(map.name! + " Callouts")
                        .font(.title)
                        .fontWeight(.bold)
                    CalloutMapView(map: map)
                    Divider().overlay(.gray)
                }
                Group {
                    Text("Description")
                        .font(.title)
                        .fontWeight(.bold)
                    Text(map.overview!)

                }

            }.padding()

        }.background(Image("background")).foregroundColor(.white)
    }

}

struct PlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = MapModel()
        MapDetailView(map: model.maps[0])
    }
}
