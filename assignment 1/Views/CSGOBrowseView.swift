//
//  CSGOBrowseView.swift
//  CSGO Maps
//
//  Created by William on 02/08/2022.
//

import SwiftUI

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
