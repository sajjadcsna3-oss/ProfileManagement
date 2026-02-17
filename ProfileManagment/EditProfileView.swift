import SwiftUI
struct EditProfileView: View {
    
    @State private var fullName = "Alex Morty"
    @State private var email = "alex@mail.com"
    @State private var phone = "89001234567"
    
    var body: some View {
        VStack(spacing: 20) {
            
            // Profile Image
            Circle()
                .fill(Color.gray.opacity(0.3))
                .frame(width: 120, height: 120)
                .overlay(
                    Image(systemName: "person.fill")
                        .foregroundColor(.gray)
                        .font(.largeTitle)
                )
            
            // Image Buttons
            HStack(spacing: 15) {
                Button("Choose from gallery") {}
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(8)
                
                Button("Take photo") {}
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(8)
            }
            .padding(.horizontal)
            
            // Form Fields
            VStack(spacing: 15) {
                
                VStack(alignment: .leading) {
                    Text("Full Name")
                        .font(.caption)
                        .foregroundColor(.gray)
                    TextField("", text: $fullName)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                }
                
                VStack(alignment: .leading) {
                    Text("Email")
                        .font(.caption)
                        .foregroundColor(.gray)
                    TextField("", text: $email)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                        .disabled(true)
                }
                
                VStack(alignment: .leading) {
                    Text("Phone")
                        .font(.caption)
                        .foregroundColor(.gray)
                    TextField("", text: $phone)
                        .keyboardType(.numberPad)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                }
            }
            .padding(.horizontal)
            
            // Buttons
            VStack(spacing: 15) {
                Button("Save") {}
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
                Button("Cancel") {}
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .navigationTitle("Edit Profile")
    }
}
