
import Foundation

class Bob {
  static func hey(_ line: String) -> String{
        let line = line.filter{ String($0) != " " }
        print(line)
        if line.isEmpty {
            return "Fine. Be that way!"
        } else if line.hasLetters && line.isUpperCased {
            print(line)
            return "Whoa, chill out!"
        } else if line.last == "?"{
            print(line)
            return "Sure."
        } else {
            print(line)
            return "Whatever."
        }
    }
}


extension String {
    var isUpperCased: Bool {
        return self == self.uppercased()
    }
    var hasLetters: Bool {
        return self.range(of: "[a-z-A-Z]", options: .regularExpression) != nil
    }
}


