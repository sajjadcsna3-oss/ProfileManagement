//import SwiftUI
//
//struct AppRouter: View {
//    
//    @State private var path = NavigationPath()
//    
//    var body: some View {
//        
//        NavigationStack(path: $path) {
//            
//            SplashView(path: $path)
//            
//                .navigationDestination(for: AppTypes.AppRoute.self) { route in
//                    
//                    switch route {
//                        
//                    case .home:
//                        HomeView(path: $path)
//                        
//                    case .profile:
//                        ProfileCoordinator(path: $path)
//                        
//                    case .editProfile(let id):
//                        EditProfileCoordinator(profileID: id, path: $path)
//                    }
//                }
//        }
//    }
//}
