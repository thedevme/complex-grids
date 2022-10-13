import SwiftUI

struct TheatreGridSeatingView: View {
    let numOfSeatsPerRow = 8
    let numOfSeatsFrontBackRows = 6
    let seatRows = ["A", "B", "C", "D", "E", "F", "G"]
    
    var body: some View {
        ScrollView {
            VStack {
                Screen()
                    .frame(height: 25)
                    .padding(.horizontal, 50)
                    .padding(.bottom, 70)
                    .padding(.top, 20)
                
                ZStack {
                    HStack {
                        aisleLettering
                        Spacer()
                        aisleLettering
                    }
                    
                    Grid(horizontalSpacing: 8, verticalSpacing: 20) {
                        ForEach(0..<seatRows.count, id: \.self) { row in
                            GridRow {
                                if row == 0 || row == seatRows.count-1 {
                                    spacer
                                    ForEach(0..<numOfSeatsFrontBackRows, id: \.self) { col in
                                        let split = (numOfSeatsFrontBackRows/2) - 1
                                        let seatName = "\(seatRows[row])\(col+1)"
                                        
                                        SeatView(name: seatName)
                                        if col == split {
                                            spacer.gridCellColumns(3)
                                        }
                                    }
                                } else {
                                    ForEach(0..<numOfSeatsPerRow, id: \.self) { col in
                                        let split = (numOfSeatsPerRow/2) - 1
                                        let seatName = "\(seatRows[row])\(col+1)"
                                        
                                        SeatView(name: seatName)
                                        if col == split {
                                            spacer.gridCellColumns(3)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    var aisleLettering : some View {
        VStack(spacing: 20) {
            ForEach(seatRows, id: \.self) { item in
                ZStack {
                    Text(item)
                        .font(.custom(.bold, size: 14))
                        .frame(width: 20, height: 39)
                }
            }
        }
    }
    
    var spacer: some View {
        Color.clear.gridCellUnsizedAxes([.horizontal, .vertical])
    }
}

struct TheatreGridSeatingView_Previews: PreviewProvider {
    static var previews: some View {
        TheatreGridSeatingView()
    }
}
