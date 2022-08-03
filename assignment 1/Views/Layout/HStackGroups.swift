/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Nguyen Tuan Anh
  ID: s3864077
  Created  date: 26/07/2022
  Last modified: 28/07/2022
  Acknowledgement:

*/


import SwiftUI

// Button the filter in mode view
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
