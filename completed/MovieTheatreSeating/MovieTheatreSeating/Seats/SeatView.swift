import SwiftUI

struct SeatView: View {
    var name = ""
    @State private var isChecked = false
    
    var body: some View {
        ZStack {
            available
                .frame(width: 35, height: 39)
            Text(name)
                .foregroundColor(.white)
                .font(.custom(.bold, size: 12))
                .opacity(isChecked ? 1 : 0)
                .offset(y: -5)
        }
    }
    
    var available: some View {
        ZStack {
            Button(action: {
                isChecked.toggle()
            }) {
                Toggle("Selected", isOn: $isChecked)
            }
            .buttonStyle(PlainButtonStyle())
            .toggleStyle(SeatToggleStyle())
        }
    }
    
    func randomBool() -> Bool {
        return arc4random_uniform(2) == 0
    }
}

struct SeatView_Previews: PreviewProvider {
    static var previews: some View {
        SeatView(name: "A1")
    }
}
