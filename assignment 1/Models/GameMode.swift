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

/*
    Class contains the game map information such as name , location ,coordinate, et cetera
*/
class GameMode: Identifiable, Decodable {
    var id: UUID?
    var name: String
    var group: [GroupMap]

}
class GroupMap: Identifiable, Decodable {
    var id: UUID?
    var groupName: String
    var maps: [String]
    init(groupName: String? = nil, maps: [String]? = nil) {
        self.groupName = groupName ?? ""
        self.maps = maps ?? [""]
    }

}
