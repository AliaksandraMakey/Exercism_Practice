

import Foundation

enum BinarySearchError: Error {
    case unsorted
}
class BinarySearch {
    var list: [Int]
    var middle: Int

    func searchFor(_ num: Int) -> Int? {
        var left = 0
        var right = list.count - 1
        while right - left >= 0 {
                   if list[middle] == num {
                       return middle
                   } else if list[middle] < num {
                       left = middle + 1
                   } else {
                       right = middle - 1
                   }
                   middle = (left + right) / 2
               }
               return nil
    }

    init(_ numbers: [Int]) throws {
                guard numbers.sorted() == numbers else {
                    throw BinarySearchError.unsorted
                }
        self.list = numbers
        middle = numbers.count / 2
    }
}

