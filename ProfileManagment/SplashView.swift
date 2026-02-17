import SwiftUI

struct SplashView: View {
    @State private var isActive = false
    
    var body: some View {
        NavigationStack {
            if isActive {
                HomeView()
            } else {
                VStack {
                    Spacer()
                    
                    Image(systemName: "pencil.and.outline")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .padding()
                        .background(
                            LinearGradient(
                                colors: [Color.blue, Color.green],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    Spacer()
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        isActive = true
                    }
                }
            }
        }
    }
}
