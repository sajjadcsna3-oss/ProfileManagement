//import SwiftUI
//import SwiftData
//
//struct EditProfileCoordinator: View {
//    
//    @Environment(\.modelContext) private var context
//    let profileID: String
//    @Binding var path: NavigationPath
//    
//    var body: some View {
//        
//        let descriptor = FetchDescriptor<ProfileModel>()
//        let profiles = try? context.fetch(descriptor)
//        
//        let profile = profiles?.first {
//            $0.id.uuidString == profileID
//        }
//        
//        let vm = EditProfileViewModel(profile: profile, context: context)
//        
//        EditProfileView(vm: vm)
//    }
//}
