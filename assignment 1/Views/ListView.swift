//
//  ListView.swift
//  assignment 1
//
//  Created by William on 12/07/2022.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var mapModel = MapModel()
    init() {
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.blue]
    }
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Choose a map to view callout")
                    .font(.subheadline)
                    .foregroundColor(Color.white)
                    .offset(x: -82, y: 0)
                ForEach(mapModel.maps) { map in
                    VStack {
                        NavigationLink(destination: MapDetailView(map: map), label: {
                                ZStack {
                                    Image(map.name!.lowercased() + "banner").resizable().scaledToFit().clipped().blur(radius: 2).cornerRadius(20).padding(15)

                                    Text(map.name!).font(.largeTitle).fontWeight(.heavy).foregroundColor(.white).shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)

                                }
                            }
                        ) }
                }
                    .navigationTitle("Competitive Maps")
            }.background(Image("background"))
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
