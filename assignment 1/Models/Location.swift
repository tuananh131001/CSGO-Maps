//
//  Location.swift
//  assignment 1
//
//  Created by William on 19/07/2022.
//

import Foundation


class Location: Decodable, Identifiable{

    var name: String
    var latitude: Double
    var longitude : Double
    var coordinate:  CLLocationCoordinate2D
    
    
    init(id : Int, name : String, latitude : Double, longitude : Double){
        
        self.id = id
        self.name = name
        self.longitude = longitude
        self.latitude = latitude
    }
    
}
