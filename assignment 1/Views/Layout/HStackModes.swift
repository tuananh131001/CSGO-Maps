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
// Display the modes in horizontal and can be scroll
struct HStackModes: View {
    @EnvironmentObject var mapModel: MapModel
    var body: some View {

        ScrollView([.horizontal], showsIndicators: false) {
            HStack {
                ForEach(mapModel.modes) { mode in
                    NavigationLink(destination: ModeDetail(groupMap: mode), label: {
                            VStack(alignment: .leading) {
                                Image(mode.name.lowercased() + "logo").resizable().frame(width: 175, height: 175)
                                Text(mode.name)
                                    .font(.headline)
                                    
                            }
                    }).buttonStyle(PlainButtonStyle())
                    //end Navigate
                }
            }
        }
    }
}

struct HStackModes_Previews: PreviewProvider {
    static var previews: some View {
        HStackModes() .environmentObject(MapModel())
    }
}
