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
    Service class for parsing data from json
*/
class DataService {
    static func getMapData() -> [GameMap] {
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
    static func getModeData() -> [GameMode] {
        let pathString = Bundle.main.path(forResource: "mode", ofType: "json")
        if let path = pathString {
            // Create a url object
            let url = URL(fileURLWithPath: path)
            //Error handling
            do {
                let data = try Data(contentsOf: url)
                //Parse the data
                let decoder = JSONDecoder()
                do {
                    let modeData = try decoder.decode([GameMode].self, from: data)
                    for mode in modeData {
                        mode.id = UUID()
                        for i in mode.group {
                            i.id = UUID()
                        }
                    }
                    return modeData
                } catch {
                    print(error)
                }
            }
            catch {
                // execution will come here if an error is thrown
                print(error)
            }

        }
        return [GameMode]()
    }
}
