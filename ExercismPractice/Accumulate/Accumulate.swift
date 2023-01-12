
import Foundation

extension Array {
    func accumulate<T>(_ function: (Element) -> T) -> [T] {
        var resultArray = [T]()
        for elem in self {
            resultArray.append(function(elem))
        }
       return resultArray
    }
}

