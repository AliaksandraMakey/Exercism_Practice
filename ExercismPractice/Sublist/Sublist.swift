
import Foundation

extension Array where Element: Equatable {
    func isSublist(_ array: Array) -> Bool {
        for index in array.startIndex..<array.count
        where index <= array.count - count {
            if array[index...].starts(with: self) {
                return true
            }
        }
        return false
    }
}

enum Classify {
    case equal, sublist, superlist, unequal
}

func classifier(listOne: [Int], listTwo: [Int]) -> Classify {
    if listOne == listTwo || listOne.isEmpty == listTwo.isEmpty{
        return .equal
    } else if listOne.isSublist(listTwo) {
        return .superlist
    } else if listTwo.isSublist(listOne) {
        return .sublist
    } else {
        return .unequal
    }
}

