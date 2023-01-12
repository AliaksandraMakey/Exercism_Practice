
import Foundation


class TwoFer {
    var name: String?
    
    init(name: String){
        self.name = twoFer(name: name)
        func twoFer(name: String) -> String {
            return "One for \(name), one for me."
        }
    }
    convenience init(name: String?){
        self.init(name: nil)
        func twoFer() -> String {
            return "One for you, one for me."
        }
    }
    
   static func twoFer(name: String? = nil) -> String {
        if name != nil {
            return "One for \(name!), one for me."
        } else {
            return "One for you, one for me."
        }
    }
    
    static func twoFerTwo(name: String? = nil) -> String {
        return "One for \(name ?? "you"), one for me."
    }
}
