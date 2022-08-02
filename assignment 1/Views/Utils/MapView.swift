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
  Tom Huynh's Map View
 
*/
import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D

    @State private var region = MKCoordinateRegion()

    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
            setRegion(coordinate)
        }
    }

    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 8, longitudeDelta: 8)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 32.1425789, longitude: -7.2185038))
    }
}
