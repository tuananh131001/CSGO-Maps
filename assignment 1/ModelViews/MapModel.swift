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
import Foundation
import SwiftUI

/*
 There are 2 data from maps and modes
 Pushlished the data so it can be displayed and access
 Function get map from a String and return a GameMap object
 */
class MapModel: ObservableObject {
    @Published var maps = [GameMap]()
    @Published var modes = [GameMode]()
    init() {
        self.maps = DataService.getMapData()
        self.modes = DataService.getModeData()
    }
    func getMap(name: String) -> GameMap {
        // compare between in Gamemap to the name get from pass in
        let map: GameMap? = maps.first(where: { $0.name?.lowercased() == name.lowercased() })
        // do something with foo
        return map ?? GameMap()
    }


}

