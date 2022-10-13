import SwiftUI

struct SeatToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.hidden()
    }
}
