
import Foundation

struct PhoneNumber {
    var number: String
    var areaCode: String {
        return String(number.prefix(3))
    }

    init(_ startingNumber: String) {
        var convertNumber = startingNumber.components(separatedBy: ["-", "(", "+", ")", ".", " "]).joined()
        if convertNumber.count < 10 || convertNumber.count > 11 {
            self.number = "0000000000"
        } else if convertNumber.starts(with: "1") || convertNumber.count == 11{
            _ = String(convertNumber.removeFirst())
            if convertNumber.starts(with: "2") {
                self.number = convertNumber
            } else {
                self.number = "0000000000"}
        } else {
            self.number = convertNumber
        }
    }
}

extension PhoneNumber: CustomStringConvertible {
    var description: String {
        return """
            (\(areaCode)) \
            \(number.dropFirst(3).dropLast(4))\
            -\(number.dropFirst(6))
            """
    }
}
