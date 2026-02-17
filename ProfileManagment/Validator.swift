//import Foundation
//
//struct Validator {
//    
//    static func validateName(_ name: String) -> String? {
//        if name.trimmingCharacters(in: .whitespaces).isEmpty {
//            return AppStrings.Validation.emptyName
//        }
//        return nil
//    }
//    
//    static func validatePhone(_ phone: String) -> String? {
//        if phone.isEmpty {
//            return AppStrings.Validation.invalidPhone
//        }
//        
//        if phone.allSatisfy({ $0.isNumber }) {
//            return nil
//        }
//        
//        return AppStrings.Validation.invalidPhone
//    }
//}
