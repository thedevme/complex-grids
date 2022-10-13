import SwiftUI

struct LeftSeatToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.hidden()
    }
}

struct RightSeatToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.hidden()
    }
}
