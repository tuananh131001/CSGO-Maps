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

// For display map in banner with text and blur background
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
