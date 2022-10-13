import SwiftUI

class GridViewModel: ObservableObject {
    var totalBackRowSeats = 12
    var totalBackRowGridSeats = 4
    
    let frontRow: [GridItem] = Array(repeating: GridItem(.fixed(70), spacing: 10), count: 4)
    let secondRow: [GridItem] = Array(repeating: GridItem(.fixed(70), spacing: 10), count: 5)
    let accessibileRow: [GridItem] = Array(repeating: GridItem(.fixed(105), spacing: 10), count: 1)
    let singleRow: [GridItem] = Array(repeating: GridItem(.fixed(35), spacing: 10), count: 2)
    let backRows: [GridItem] = Array(repeating: GridItem(.fixed(70), spacing: 10), count: 4)
}
