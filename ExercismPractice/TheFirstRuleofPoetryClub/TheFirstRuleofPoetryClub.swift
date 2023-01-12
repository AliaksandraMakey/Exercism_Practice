
import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
    return poem.components(separatedBy: "\n")
}

func firstLetter(_ line: String) -> Character {
    if let word = line.first{
        return word
    } else {
        return Character("_")
    }
}

func capitalize(_ phrase: String) -> String {
    return String(phrase.capitalized)
}

func trimFromEnd( _ line: String) -> String {
    return line.trimmingCharacters(in: .whitespaces)
}

func  lastLetter(_ line: String) -> Character {
    if let word = line.last{
        return word
    } else {
        return Character("_")
    }
}

func backDoorPassword(_ phrase: String) -> String {
    return "\(phrase.capitalized), please"
}

func ithLetter(_ line: String, i: Int) -> Character {
    guard line.count > i else { return " " }
       let index: String.Index = line.index(line.startIndex, offsetBy: i)
       return line[index]
}

func secretRoomPassword(_ phrase: String) -> String {
    return "\(phrase.uppercased())!"
}

