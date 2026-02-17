import SwiftUI
struct HomeView: View {
    var body: some View {
        VStack(spacing: 30) {
            
            Spacer()
            
            Text("Profile Management")
                .font(.title3)
                .fontWeight(.semibold)
            
            NavigationLink(destination: ProfileView()) {
                Text("Go to Profile")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 40)
            
            Spacer()
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}
