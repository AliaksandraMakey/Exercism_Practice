
import Foundation

var birthday = "Birthday"
var valentine = "Valentine's Day"
var anniversary = "Anniversary"
var space: Character = " "
var exclamation: Character = "!"

func buildSign(for forHolliday: String, name: String) -> String {
    return "Happy" + String(space) + forHolliday + String(space) + name + String(exclamation)
}

func graduationFor(name: String, year: Int) -> String {
    return "Congratulations \(name)!\nClass of \(year)"
}

func costOf(sign: String) -> Int {
    let characters = sign.count
    return characters * 2 + 20
}

