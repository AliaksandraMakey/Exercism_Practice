

import Foundation

class SumOfMultiples {
    var inMultiples: [Int]

    init (inMultiples: [Int]) {
        self.inMultiples = inMultiples
    }

    static func toLimit(_ number: Int, inMultiples multi: [Int]) -> Int {
        var sum = 0
        var sumArray = [Int]()
        for m in multi where m != 0 {
            for num in 0..<number {
                if num != 0 && num % m == 0  {
                    if !sumArray.contains(num) {
                        sumArray.append(num)
                    }
                }
            }
        }
        // the second metod: return sumArray.reduce(0, +)    without cicle for in
        for s in sumArray {
            sum += s
        }
        return sum
    }
}


