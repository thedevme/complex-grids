import SwiftUI

struct TheatreSeatingView: View {
    
    let rows = ["A", "B", "C", "D", "E", "F", "G"]
    let numOfSeatsPerRow = [3, 4, 4, 4, 4, 4, 3]
    
    
    init() {}
    
    var body: some View {
        Text("Theatre Seating View")
    }
}

struct TheatreSeatingView_Previews: PreviewProvider {
    static var previews: some View {
        TheatreSeatingView()
    }
}
