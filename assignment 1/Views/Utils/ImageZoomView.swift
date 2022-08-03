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
    https://www.youtube.com/watch?v=p0SwXJYJp2U
 
*/
import SwiftUI

/*
 A view user use the zoom out and zoom in on the right hand to zoom.
 User can use finger to move around the map
 */
struct ImageZoomView: View {

    @GestureState private var scaleState: CGFloat = 1
    @GestureState private var offsetState = CGSize.zero

    @State private var offset = CGSize.zero
    @State private var scale: CGFloat = 1

    var name: String

    func resetStatus() {
        self.offset = CGSize.zero
        self.scale = 1
    }
    func zoomInButton() {
        self.scale *= 1.2
    }
    func zoomOutButton() {
        self.scale /= 1.2
    }

    init(name: String) {
        self.name = name
        resetStatus()
    }

    var zoomGesture: some Gesture {
//
        MagnificationGesture()
            .updating($scaleState) { currentState, gestureState, _ in
            gestureState = gestureState
        }
            .onEnded { value in
            scale += 0
        }
    }


    var dragGesture: some Gesture {
        DragGesture()
            .updating($offsetState) { currentState, gestureState, _ in
            gestureState = currentState.translation
        }.onEnded { value in
            offset.height += value.translation.height
            offset.width += value.translation.width
            print(offset.height)


        }
    }

    var doubleTapGesture: some Gesture {
        TapGesture(count: 2).onEnded { value in
            resetStatus()
        }
    }
    var body: some View {

        VStack(alignment: .trailing) {
            Image(name)
                .resizable()
                .scaledToFit()
                .scaleEffect(self.scale * scaleState)
                .offset(x: offset.width + offsetState.width, y: offset.height + offsetState.height)
                .gesture(SimultaneousGesture(zoomGesture, dragGesture))
                .gesture(doubleTapGesture)

            VStack {
                Button {
                    zoomInButton()
                } label: {
                    Image(systemName: "plus.magnifyingglass").resizable().foregroundColor(.white).frame(width: 50, height: 50)
                }
                Button {
                    zoomOutButton()
                } label: {
                    Image(systemName: "minus.magnifyingglass").resizable().foregroundColor(.white).frame(width: 50, height: 50)
                }
            }.padding(5).background(Color(red: 255, green: 0, blue: 0, opacity: 0.1)).cornerRadius(10).padding(5)

        }.background(Image("background"))
    }
}

struct ImageZoomView_Previews: PreviewProvider {
    static var previews: some View {
        ImageZoomView(name: "mirage" + "callout").scaledToFit()
    }
}
