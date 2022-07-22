//
//  Player.swift
//  assignment 1
//
//  Created by William on 12/07/2022.
//
import CoreLocation

import Foundation
class GameMap: Identifiable, Decodable {
    var id: UUID?
    var name: String
    var image: String?
    var overview: String?
    
    var location: String?
    
    var latitude: Double?
    var longitude: Double?
    var coordinate:  CLLocationCoordinate2D?{
        CLLocationCoordinate2D(latitude: latitude!, longitude: longitude!)
    }
    
}
