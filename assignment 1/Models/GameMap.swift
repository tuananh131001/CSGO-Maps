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
import CoreLocation
import Foundation
/*
    Class contains the game map information such as name , location ,coordinate, et cetera
*/
class GameMap: Identifiable, Decodable {
    var id: UUID?
    var name: String?
    var overview: String?
    
    var location: String?
    
    var latitude: Double?
    var longitude: Double?
    var coordinate:  CLLocationCoordinate2D?{
        CLLocationCoordinate2D(latitude: latitude ?? 12.0, longitude: longitude ?? 12.0)
    }
    var map: String?
    var ctwin: Double?
    
}
