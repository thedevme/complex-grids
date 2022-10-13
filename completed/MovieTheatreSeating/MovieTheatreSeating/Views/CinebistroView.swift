import SwiftUI

struct CinebistroView: View {
    @ObservedObject var viewModel: GridViewModel = GridViewModel()
    
    var body: some View {
        ScrollView {
            Screen()
                .frame(height: 25)
                .padding(.horizontal, 50)
                .padding(.bottom, 70)
                .padding(.top, 20)
            
            VStack(spacing: 45) {
                frontSection
                accessibleSection
                backSection
            }
        }
    }
    
    var frontSection: some View {
        VStack(spacing: 20) {
            HStack {
                LazyVGrid(columns: viewModel.frontRow, spacing: 20) {
                    ForEach(0..<viewModel.frontRow.count, id: \.self) { _ in
                        ItemView(seatType: .loveseat)
                    }
                }
            }
            .padding(.horizontal, 30)

            HStack {
                LazyVGrid(columns: viewModel.secondRow, spacing: 20) {
                    ForEach(0..<viewModel.secondRow.count, id: \.self) { _ in
                        ItemView(seatType: .loveseat)
                    }
                }
            }
            .padding(.horizontal, 30)
        }
    }
    var accessibleSection: some View {
        HStack {
            LazyVGrid(columns: viewModel.accessibileRow, spacing: 20) {
                ForEach(0..<viewModel.accessibileRow.count, id: \.self) { _ in
                    ItemView(seatType: .accessibile(rightSide: true))
                }
            }
            
            Spacer()
            
            LazyVGrid(columns: viewModel.singleRow, spacing: 20) {
                ForEach(0..<viewModel.singleRow.count, id: \.self) { _ in
                    SeatView()
                }
            }
            
            LazyVGrid(columns: viewModel.accessibileRow, spacing: 20) {
                ForEach(0..<viewModel.accessibileRow.count, id: \.self) { _ in
                    ItemView(seatType: .accessibile(rightSide: false))
                }
            }
        }
        .padding(.horizontal, 30)
    }
    var backSection: some View {
        HStack {
            LazyVGrid(columns: viewModel.backRows, spacing: 20) {
                ForEach(0..<viewModel.totalBackRowSeats, id: \.self) { _ in
                    ItemView(seatType: .loveseat)
                }
            }
        }
        .padding(.horizontal, 30)
    }
}

struct CinebistroView_Previews: PreviewProvider {
    static var previews: some View {
        CinebistroView()
    }
}
