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

@main
struct assignment_1App: App {
    var body: some Scene {
        WindowGroup {
            WelcomeView().environmentObject(MapModel())
        }
    }
}
