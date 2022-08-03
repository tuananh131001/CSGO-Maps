/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Nguyen Tuan Anh
  ID: s3864077
  Created  date: 26/07/2022
  Last modified: 3/08/2022
  Acknowledgement: Tom  Huynh's Welcome view
*/

import SwiftUI

/*
 Struct contains header , gif and a button to go in
 Also there is sound of C4 planning for making thrilling if not clicking the button
 */
struct GreetingView: View {
    @Binding var active: Bool
    var body: some View {

        VStack(spacing: 20) {
            Spacer()
            VStack(spacing: 0) {
                Text("CS:GO MAPS")
                    .font(.system(size: 60))
                    .fontWeight(.heavy)
                    .foregroundColor(.yellow)
                Text("""
                    "Do stupid stuff,
                    But do it with confidence"
                    - Robin "Flusha" Ronnquist
                    """)
                    .font(.subheadline)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
            }
            Spacer()
            ZStack {
                GifImage("csgo-dance")
                    .frame(width: 220, height: 232)
            }
            Spacer()
            Button(action: {
                // Click button lets roll will play theme music
                playSound(sound: "maintheme", type: "mp3")
                active = false
            }, label: {
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                        .frame(height: 80)
                        .overlay(Text("Lets roll")
                            .font(.system(.title3, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.white))
                })
        }.onAppear(perform: {
            playSound(sound: ("welcomemusic"), type: "mp3")
        })
            .background(Image("background"))

    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView(active: .constant(true))
    }
}
