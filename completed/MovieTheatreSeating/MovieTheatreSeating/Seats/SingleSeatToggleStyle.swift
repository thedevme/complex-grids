import SwiftUI

struct SeatToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            configuration.label.hidden()
            Image(configuration.isOn ? "seat-selected" : "seat-available")
                .resizable()
                .frame(width: 35, height: 39)
        }
    }
}
