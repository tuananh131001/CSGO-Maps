//
//  HeaderDetail.swift
//  CSGO Maps
//
//  Created by William on 28/07/2022.
//

import SwiftUI

struct HeaderDetail: View {
    var map:GameMap
    var body: some View {
        HStack(alignment: .top, spacing: 30) {
            RectangleImage(image: Image(map.name!.lowercased() + "logo"))

            VStack(alignment: .leading) {
                Text(map.name!).font(.title).fontWeight(.bold)
                Text("Origin Country: ")
                    .font(.subheadline)
                Text(map.location!)
                    .font(.subheadline)
                Spacer()
                Image(map.location!.lowercased()).resizable().frame(width: 70, height: 45).cornerRadius(15)
            }
        }
    }
}
