
import SwiftUI

struct ImageZoomView: View {
    var name: String
    @State var scale: CGFloat = 1.0
    @State var isTapped: Bool = false
    @State var pointTapped: CGPoint = CGPoint.zero
    @State var draggedSize: CGSize = CGSize.zero
    @State var previousDragged: CGSize = CGSize.zero
    var body: some View {
        GeometryReader { reader in
            Image(name)
                .resizable()
                .scaledToFit()
                .offset(x: self.draggedSize.width, y: 0)
                .scaleEffect(self.scale,
                anchor: UnitPoint(
                    x: self.pointTapped.x / reader.frame(in: .global).maxX,
                    y: self.pointTapped.y / reader.frame(in: .global).maxY
                ))
                .gesture(TapGesture(count: 2)
                    .onEnded({
                    self.isTapped = !self.isTapped
                    if self.isTapped {
                        self.scale = 2.0
                    } else {
                        self.scale = 1.0
                    }
                })
                    .simultaneously(with: DragGesture(minimumDistance: 0, coordinateSpace: .global)
                        .onChanged({ (value) in
                        self.pointTapped = value.startLocation
                        self.draggedSize = CGSize(
                            width: value.translation.width + self.previousDragged.width,
                            height: value.translation.height + self.previousDragged.height)
                    }).onEnded({ (value) in

                        let offsetWidth = (reader.frame(in: .global).maxX * self.scale - reader.frame(in: .global).maxX) / 2
                        let newDraggedWidth = self.draggedSize.width * self.scale

                        let offsetHeight = (reader.frame(in: .global).maxY * self.scale - reader.frame(in: .global).maxY) / 2
                        let newDraggedHeight = self.draggedSize.height * self.scale

                        self.draggedSize = CGSize(width: value.translation.width + self.previousDragged.width,
                            height: value.translation.height + self.previousDragged.height)

                        if newDraggedWidth > offsetWidth {

                            self.draggedSize.width = offsetWidth / self.scale

                        } else if newDraggedWidth < -offsetWidth {

                            self.draggedSize.width = -offsetWidth / self.scale
                        }

                        if newDraggedHeight > offsetHeight {

                            self.draggedSize.height = offsetHeight / self.scale

                        } else if newDraggedHeight < -offsetHeight {

                            self.draggedSize.height = -offsetHeight / self.scale
                        }

                        self.previousDragged = self.draggedSize

                    }))).gesture(MagnificationGesture()
                    .onChanged({ (scale) in
                    self.scale = scale.magnitude
                }).onEnded({ (scaleFinal) in
                    self.scale = scaleFinal.magnitude
                }))
        }.background(Image("background"))
    }
}

struct ImageZoomView_Previews: PreviewProvider {
    static var previews: some View {
        ImageZoomView(name: "mirage" + "callout").scaledToFit()
    }
}
