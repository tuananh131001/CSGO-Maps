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
  Tom Huynh's Circle View
 
*/
import SwiftUI

/*
    a rectangle frame
 */
struct RectangleImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 160, height: 150)
            .clipShape(Rectangle())
            .shadow(radius: 7)
            .cornerRadius(20)
            
            
    }
}

struct RectangleImage_Previews: PreviewProvider {
    static var previews: some View {
        RectangleImage(image: Image("cachelogo"))
    }
}
