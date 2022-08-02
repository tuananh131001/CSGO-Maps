//
//  ModeDetail.swift
//  CSGO Maps
//
//  Created by William on 31/07/2022.
//

import SwiftUI


struct ModeDetail: View {
    var groupMap: GameMode
    @EnvironmentObject var mapModel: MapModel
    @State var modeInChoose = 0
    var body: some View {
        ScrollView() {
            VStack(alignment: .leading, spacing: 15) {
                Group {
                    HeaderDetail(mapName: groupMap.name, mapLocation: "", groupModeList: groupMap.group)
                    Divider()
                    HStackGroups(groupMap: groupMap, modeInChoose: $modeInChoose)
                }
                Divider()


                ForEach(groupMap.group[modeInChoose].maps, id: \.self) { map in
                    NavigationLink(destination: MapDetailView(mapObject: mapModel.getMap(name: map)), label: {
                            MapBanner(mapName: map)
                        })
                }
            }.padding(.horizontal)
        }.navigationBarTitle(Text(""), displayMode: .inline)


    }
    //https://stackoverflow.com/questions/62739590/how-to-change-color-of-buttons-created-dynamically-inside-foreach-in-swiftui


}

struct ModeDetail_Previews: PreviewProvider {
    static var previews: some View {
        ModeDetail(groupMap: MapModel().modes[0]).environmentObject(MapModel())
    }
}
