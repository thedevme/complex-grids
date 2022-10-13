import SwiftUI

struct CinebistroView: View {
    @ObservedObject var viewModel: GridViewModel = GridViewModel()
    
    var body: some View {
        Text("Cinebistro View")
    }
}

struct CinebistroView_Previews: PreviewProvider {
    static var previews: some View {
        CinebistroView()
    }
}
