import SwiftUI

enum SeatType {
    case single
    case loveseat
    case accessibile(rightSide: Bool)
}

struct ItemView: View {
    var seatType: SeatType
    
    var body: some View {
        switch seatType {
            case .single:
                SeatView()
            case .loveseat:
                LoveSeatView()
            case .accessibile(let rightSide):
                HStack(spacing: 5) {
                    if rightSide == false { guestSeating }
                    Image("accessible-available")
                        .resizable()
                        .frame(width: 35, height: 39)
                    Image("accessible-available")
                        .resizable()
                        .frame(width: 35, height: 39)
                    if rightSide { guestSeating }
                }
        }
    }
    
    var guestSeating: some View {
        Image("accessible-guest-available")
            .resizable()
            .frame(width: 35, height: 39)
    }
}
