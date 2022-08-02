//
//  CSGOTabView.swift
//  CSGO Maps
//
//  Created by William on 02/08/2022.
//

import SwiftUI

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
