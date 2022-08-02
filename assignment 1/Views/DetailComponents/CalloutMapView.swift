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
 https://stackoverflow.com/questions/28774542/check-if-string-name-matches-an-asset-in-images-xcassets
*/
import SwiftUI

/*
    Callouts of Map contains navigation to view where user can zoom in zoom out
    input : map data
*/
struct CalloutMapView: View {
    var map: GameMap
    var body: some View {
        VStack (alignment: .leading){
            // Callout Map
            NavigationLink(destination: ImageZoomView(name: (map.name?.lowercased() ?? "N/a") + "callout")) {
                Image((map.name?.lowercased() ?? "n/a") + "callout").resizable().scaledToFit()
            }.isDetailLink(false)
            // Check map has lower
            if UIImage(named: (map.name?.lowercased() ?? "N/a") + "lowercallout") != nil {
                // use your image (myImage), it exists!
                NavigationLink(destination: ImageZoomView(name: (map.name?.lowercased() ?? "n/a") + "lowercallout")) {
                    Image((map.name?.lowercased() ?? "n/a") + "lowercallout").resizable().scaledToFit()
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
