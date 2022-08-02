//
//  HStackModes.swift
//  CSGO Maps
//
//  Created by William on 31/07/2022.
//

import SwiftUI

struct HStackModes: View {
    @EnvironmentObject var mapModel: MapModel
    var body: some View {

        ScrollView([.horizontal], showsIndicators: false) {
            HStack {
                ForEach(mapModel.modes) { mode in
                    NavigationLink(destination: ModeDetail(groupMap: mode), label: {
                            VStack(alignment: .leading) {
                                Image(mode.name.lowercased() + "logo").resizable().frame(width: 125, height: 175)
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
