//
//  InfoBarView.swift
//  CSGO Maps
//
//  Created by William on 28/07/2022.
//

import SwiftUI

struct InfoBarView: View {
    var ctwin: Double
    var body: some View {
        HStack {
            VStack {
                Text("CT" )
                    
                Text(String(ctwin) + "%")
                    .font(.largeTitle)

                Text("round win" )
            }
            Spacer()
            Image("vs").resizable().frame(width: 30, height: 30)
            Spacer()
            VStack {
                Text("T" )
                Text(String(100 - ctwin) + "%")
                    .font(.largeTitle)
                Text("round win" )
            }
        }.foregroundColor(.gray)
    }
}

struct InfoBarView_Previews: PreviewProvider {
    static var previews: some View {
        InfoBarView(ctwin: 50)
    }
}
