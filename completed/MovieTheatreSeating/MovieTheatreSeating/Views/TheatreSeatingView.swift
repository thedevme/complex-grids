import SwiftUI

struct TheatreSeatingView: View {
    
    var totalSeats = 0
    var leftSide: Range<Int>
    let rows = ["A", "B", "C", "D", "E", "F", "G"]
    let numOfSeatsPerRow = [3, 4, 4, 4, 4, 4, 3]
    var columns:[GridItem] = []
    let rowSpacing:CGFloat = 20
    var minMaxSeatsPerRow: Int = 0
    var hasAisle = true
    
    init() {
        totalSeats = ((numOfSeatsPerRow.max() ?? 0) * 2) * numOfSeatsPerRow.count
        leftSide = 0..<totalSeats/2
        columns = Array(repeating: GridItem(.fixed(34), spacing: 5), count: numOfSeatsPerRow.max() ?? 0)
        minMaxSeatsPerRow = numOfSeatsPerRow.max() ?? 0
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                Screen()
                    .frame(height: 25)
                    .padding(.horizontal, 50)
                    .padding(.bottom, 70)
                    .padding(.top, 20)
                
                HStack(alignment: .top) {
                    aisleLettering
                    Spacer()
                    seating
                    Spacer()
                    aisleLettering
                }
            }
        }
    }
    
    var seating: some View {
        ZStack(alignment: .top) {
            HStack(spacing: hasAisle ? 40 : 10) {
                ForEach(0 ..< 2) { item in
                    LazyVGrid(columns: columns, spacing: rowSpacing) {
                        ForEach(leftSide, id: \.self) { index in
                            let seatRow = index / columns.count
                            let value = numOfSeatsPerRow[seatRow]
                            let offset = columns.count * item
                            let seatColumn = index % columns.count + offset
                            let seatColumnValue = seatColumn - ((numOfSeatsPerRow.max() ?? 0) - value)
                            let seatName = "\(rows[seatRow])\(seatColumnValue+1)"
                            
                            if seatColumn + value < columns.count || seatColumn - value >= columns.count {
                                Spacer(minLength: 34)
                            } else {
                                SeatView(name: seatName)
                            }
                        }
                    }
                }
            }
        }
    }
    
    var aisleLettering : some View {
        VStack(spacing: rowSpacing) {
            ForEach(rows, id: \.self) { item in
                ZStack {
                    Text(item)
                        .font(.custom(.bold, size: 14))
                        .frame(width: 20, height: 39)
                }
            }
        }
    }
}

struct TheatreSeatingView_Previews: PreviewProvider {
    static var previews: some View {
        TheatreSeatingView()
    }
}
