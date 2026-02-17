//import SwiftData
//import Combine
//import Foundation
//final class EditProfileViewModel: ObservableObject {
//
//    @Published var fullName: String = ""
//    @Published var email: String = ""
//    @Published var phone: String = ""
//
//    private let context: ModelContext
//    var profile: ProfileModel?
//
//    init(profile: ProfileModel?, context: ModelContext) {
//        self.profile = profile
//        self.context = context
//
//        // Agar profile exist karti hai to data preload karo
//        if let profile {
//            fullName = profile.fullName
//            email = profile.email
//            phone = profile.phone
//        }
//    }
//
//    var nameError: String? {
//        fullName.trimmingCharacters(in: .whitespaces).isEmpty
//        ? "Full name cannot be empty"
//        : nil
//    }
//
//    var phoneError: String? {
//        phone.allSatisfy({ $0.isNumber }) && !phone.isEmpty
//        ? nil
//        : "Phone must be numeric"
//    }
//
//    var isValid: Bool {
//        nameError == nil &&
//        phoneError == nil &&
//        !email.trimmingCharacters(in: .whitespaces).isEmpty
//    }
//
//    func save() {
//
//        if let profile {
//            // Existing profile update
//            profile.fullName = fullName
//            profile.phone = phone
//        } else {
//            // New profile create
//            let newProfile = ProfileModel(
//                fullName: fullName,
//                email: email,
//                phone: phone
//            )
//            context.insert(newProfile)
//        }
//
//        try? context.save()
//    }
//}
