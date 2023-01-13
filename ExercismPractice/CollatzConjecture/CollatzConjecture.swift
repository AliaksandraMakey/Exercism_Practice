
import Foundation

struct CollatzConjecture {
    enum SomeError: Error {
        case negativeNumber
    }

    static func steps(_ number: Int) throws -> Int{
        guard number > 0 else { throw SomeError.negativeNumber }
        var steps = 0
        var num = number

        while num != 1 {
            if num%2 == 0 {
                num /= 2
            } else {
                num = 3*num + 1
            }
            steps += 1
        }
        return steps
    }
}
