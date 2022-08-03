/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Nguyen Tuan Anh
  ID: s3864077
  Created  date: 26/07/2022
  Last modified: 3/08/2022
  Acknowledgement:
*/
import SwiftUI

/*
 Tab view of featured view and CSGO Browse view
 */
struct CSGOTabView: View {
    var body: some View {
        TabView {
            FeaturedView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            
            CSGOBrowseView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("Browse")
                    }
                }
        }
    }
}

struct CSGOTabView_Previews: PreviewProvider {
    static var previews: some View {
        CSGOTabView()
    }
}
