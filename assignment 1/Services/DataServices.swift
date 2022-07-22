//
//  DataServices.swift
//  assignment 1
//
//  Created by William on 12/07/2022.
//

import Foundation

class DataService {
    static func getLocalData() -> [GameMap] {
        let pathString = Bundle.main.path(forResource: "map", ofType: "json")
        if let path = pathString {
            // Create a url object
            let url = URL(fileURLWithPath: path)
            //Error handling
            do {
                let data = try Data(contentsOf: url)
                //Parse the data
                let decoder = JSONDecoder()
                do {
                    let mapData = try decoder.decode([GameMap].self, from: data)
                    for m in mapData {
                        m.id = UUID()
                    }
                    return mapData
                } catch {
                    print(error)
                }
            }
            catch {
                // execution will come here if an error is thrown
                print(error)
            }

        }
        return [GameMap]()
    }
}
