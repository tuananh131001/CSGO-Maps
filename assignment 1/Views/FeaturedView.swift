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
  https://stackoverflow.com/questions/56505528/swiftui-update-navigation-bar-title-color
 
*/
import SwiftUI

struct FeaturedView: View {

    @EnvironmentObject var mapModel: MapModel

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    // Game Modes View
                    Text("Game Modes").font(.title3)
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .padding(.all, 5)
                        .background(Color.blue)
                        .cornerRadius(10)
                    HStackModes()
                    Divider()
                    // All Maps View but shuffle every time open app
                    Text("All Maps").font(.title3)
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .padding(.all, 5)
                        .background(Color.blue)
                        .cornerRadius(10)
                    VStackMap(mapModel:mapModel.maps.shuffled())
                } .navigationTitle("CS:G🧭 Maps").padding()
            }
        }
    }
}

struct FeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView().environmentObject(MapModel())
    }
}
