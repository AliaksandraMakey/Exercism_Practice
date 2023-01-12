
import Foundation

class Raindrops {
    var number: Int

    init(_ number: Int) {
        self.number = number
    }

    var sounds: String {
        var str = String()
        if number%3 == 0 { (str += "Pling") }
        if number%5 == 0 { (str += "Plang") }
        if number%7 == 0 { (str += "Plong") }
        if str.isEmpty { str = "\(number)"}
        return str
    }
}


