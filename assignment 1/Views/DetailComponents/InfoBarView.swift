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

/*
    Inforbar viewcontains the map's counter-terrorist and terrorist win rate of each map
    >= 50 will be blue and < 50 will be red
    input : percent of counterstrike win rate
*/
struct InfoBarView: View {
    var ctwin: Double
    var body: some View {
        HStack {
            VStack {
                Text("CT")
                Text(String(ctwin) + "%")
                    .font(.largeTitle)
                    .foregroundColor(ctwin >= 50 ? Color.blue: Color.red)
                Text("round win")
            }
            Spacer()
            Image("vs").resizable().frame(width: 30, height: 30)
            Spacer()
            VStack {
                Text("T")
                Text(String(100 - ctwin) + "%")
                    .font(.largeTitle)
                    .foregroundColor((100 - ctwin) >= 50 ? Color.blue: Color.red)
                Text("round win")
                    
            }
        }.foregroundColor(.gray)
    }
}

struct InfoBarView_Previews: PreviewProvider {
    static var previews: some View {
        InfoBarView(ctwin: 50)
    }
}
