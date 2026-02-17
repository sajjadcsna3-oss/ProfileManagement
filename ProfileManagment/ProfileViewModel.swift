//import SwiftData
//import Combine
//
//final class ProfileViewModel: ObservableObject {
//
//    @Published var profile: ProfileModel?
//
//    private let context: ModelContext
//
//    init(context: ModelContext) {
//        self.context = context
//        fetchProfile()
//    }
//
//    func fetchProfile() {
//        let descriptor = FetchDescriptor<ProfileModel>()
//
//        do {
//            let result = try context.fetch(descriptor)
//            profile = result.first
//        } catch {
//            print(error)
//        }
//    }
//}
