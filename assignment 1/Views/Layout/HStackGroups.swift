//
//  HStackGroups.swift
//  CSGO Maps
//
//  Created by William on 01/08/2022.
//

import SwiftUI

struct HStackGroups: View {
    var groupMap: GameMode
    @Binding var modeInChoose: Int
    var body: some View {
        HStack {
            ForEach(Array(groupMap.group.enumerated()), id: \.offset) { index, mapName in
                Button {
                    modeInChoose = index
                } label: {
                    Text(mapName.groupName)
                        .font(.headline)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .lineLimit(0)
                        .foregroundColor(.white)

                }
                    .buttonStyle(.plain)
                    .padding(.all, 10)
                    .background(modeInChoose == index ? Color.red : Color.blue)
                    .cornerRadius(10)
            }

        }
    }
}
