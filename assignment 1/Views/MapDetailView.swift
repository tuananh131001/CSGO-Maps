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
import CoreLocation
/*
    The detail view of each map
    Contains all module views
    input : GameMap class
    
 */
struct MapDetailView: View {
    var mapObject: GameMap
    var body: some View {

        ScrollView {
            VStack(alignment: .leading, spacing: 25) {
                HeaderDetail(mapName: mapObject.name, mapLocation: mapObject.location)
                Divider().overlay(.gray)
                InfoBarView(ctwin: mapObject.ctwin ?? 50.0)
                Divider().overlay(.gray)
                Text("Origin Map")
                    .font(.title)
                    .fontWeight(.bold)
                MapView(coordinate: mapObject.coordinate ?? CLLocationCoordinate2D(latitude: 37.6, longitude: -95.665))
                    .frame(height: 250).cornerRadius(15)
                Divider().overlay(.gray)
                Group {
                    Text((mapObject.name ?? "N/a") + " Callouts")
                        .font(.title)
                        .fontWeight(.bold)
                    CalloutMapView(map: mapObject)
                    Divider().overlay(.gray)
                }
                Group {
                    Text("Description")
                        .font(.title)
                        .fontWeight(.bold)
                    Text(mapObject.overview ?? "nil")
                }

            }.padding(.horizontal)
        }.background(Image("background")).foregroundColor(.white).navigationBarTitle(Text(""), displayMode: .inline)
            // Random map music for every map
            .onAppear(perform: {
            playSound(sound: ("mapmusic" + String(Int.random(in: 1..<10))), type: "mp3")
        })

    }

}

struct PlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = MapModel()
        MapDetailView(mapObject: model.maps[2])
    }
}
