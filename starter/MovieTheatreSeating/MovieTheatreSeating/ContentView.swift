import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CinebistroView()
                .tabItem {
                    Label("iOS 15", systemImage: "a.square")
                }
            
            TheatreSeatingView()
                .tabItem {
                    Label("iOS 15 Complex", systemImage: "b.square")
                }
            
            TheatreGridSeatingView()
                .tabItem {
                    Label("iOS 16", systemImage: "c.square")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}







