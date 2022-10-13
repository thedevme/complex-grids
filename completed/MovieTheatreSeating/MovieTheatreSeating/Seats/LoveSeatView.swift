import SwiftUI

struct LoveSeatView: View {
    var body: some View {
        HStack(spacing: 0) {
            Image("loveseat-available-left")
                .resizable()
                .frame(width: 35, height: 39)
            Image("loveseat-available-right")
                .resizable()
                .frame(width: 35, height: 39)
        }
    }
}

struct LoveSeatButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LoveSeatView()
    }
}
