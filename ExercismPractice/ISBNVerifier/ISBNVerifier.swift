
import Foundation

struct IsbnVerifier {
    static func isValid(_ isbn: String) -> Bool {
        var index = 1
        var result = 0
        for character in isbn.lowercased().reversed().filter({ $0 != "-" }) {
            let num: Int
            if index == 1, character == "x" {
                num = 10
            } else if let int = Int(String(character)) {
                num = int
            } else {
                return false
            }
            result += num * index
            index += 1
        }
        return (index - 1) == 10 && result.isMultiple(of: 11)
    }
}
