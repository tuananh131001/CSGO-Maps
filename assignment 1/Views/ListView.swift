//
//  ListView.swift
//  assignment 1
//
//  Created by William on 12/07/2022.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var mapModel = MapModel()
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(mapModel.maps) { map in
                    VStack {
                        NavigationLink(destination: MapDetailView(map: map), label: {
                                ZStack {
                                    Image(map.image!).resizable().scaledToFit().clipped().blur(radius: 1.5).cornerRadius(5).padding(10)
                                    Text(map.name).font(.largeTitle).fontWeight(.heavy).foregroundColor(.white)

                                }
                            }
                        ) }


                }.navigationTitle("All Maps 🗺")
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
