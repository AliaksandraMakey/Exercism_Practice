
import Foundation

struct Isogram {
   static func isIsogram(_ phraseCheck: String) -> Bool {
       let phraseWithoutSpaces = phraseCheck.lowercased().filter { $0 != Character(" ") }
       let phraseWithoutDash = phraseWithoutSpaces.filter { $0 != Character("-") }
       for latter in phraseWithoutDash {
            if (phraseWithoutDash.firstIndex(of: latter) != phraseWithoutDash.lastIndex(of: latter)) {
                return false
            }
        }
        return true
    }
}
