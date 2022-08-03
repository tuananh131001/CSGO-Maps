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
 Tab view of Browse view
 Display all the map the in the app.
 There is a search bar to search for the map
 User can click in the banner to access the detail of the map
 */
struct CSGOBrowseView: View {
    @State private var searchText = ""
    @EnvironmentObject var mapModel: MapModel
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading,spacing: 20) {
                    Text("All Maps").font(.title3)
                        .fontWeight(.bold)
                    VStackMap(mapModel: searchResults).searchable(text: $searchText,placement: .navigationBarDrawer(displayMode: .always))
     
                } .navigationTitle("Map Browse").padding()

            }

        }
    }
    
    // Function to get map from search bar
    var searchResults: [GameMap] {
        if searchText.isEmpty {
            return mapModel.maps
        } else {
            return mapModel.maps.filter { $0.name!.localizedCaseInsensitiveContains(searchText) }
        }
    }

}

struct CSGOBrowseView_Previews: PreviewProvider {
    static var previews: some View {
        CSGOBrowseView()
    }
}
