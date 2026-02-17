import SwiftUI
struct ProfileView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Spacer()
            
            // Profile Image
            Circle()
                .fill(Color.gray.opacity(0.3))
                .frame(width: 120, height: 120)
                .overlay(
                    Image(systemName: "person.fill")
                        .foregroundColor(.gray)
                        .font(.largeTitle)
                )
            
            // Info Card
            VStack(spacing: 12) {
                
                HStack {
                    Text("Full Name")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("Alex Morty")
                }
                
                HStack {
                    Text("Email")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("alex@mail.com")
                }
                
                HStack {
                    Text("Phone")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("89001234567")
                }
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(12)
            .padding(.horizontal)
            
            NavigationLink(destination: EditProfileView()) {
                Text("Edit Profile")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 40)
            
            Spacer()
        }
        .navigationTitle("Profile")
    }
}
