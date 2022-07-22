//
//  PlayerModel.swift
//  assignment 1
//
//  Created by William on 12/07/2022.
//

import Foundation

class MapModel: ObservableObject {
    @Published var maps = [GameMap]()
    init() {
        self.maps = DataService.getLocalData()
    }

}
