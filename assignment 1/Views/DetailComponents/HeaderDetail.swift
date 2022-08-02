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
    Header View contains the map's logo, name , country
    input : data of the map
*/
struct HeaderDetail: View {
    var mapName: String?
    var mapLocation: String?
    var groupModeList: [GroupMap]?
    var body: some View {
        HStack(alignment: .top, spacing: 30) {
            RectangleImage(image: Image((mapName?.lowercased() ?? "N/a") + "logo"))
            VStack(alignment: .leading) {
                Text(mapName ?? "N/a").font(.title).fontWeight(.bold)
                (groupModeList != nil) ? Text("Modes: ") : nil
                ForEach(groupModeList ?? [GroupMap()]) { group in
                    Text(group.groupName).bold().font(.headline)
                }
                Spacer()
                mapLocation != "" ? Text("Country Code:") : nil
                Text(mapLocation?.uppercased() ?? "US")
                mapLocation != "" ? Image(mapLocation ?? "us").resizable().frame(width: 55, height: 30).cornerRadius(15) : nil
            }
        }
    }
}
