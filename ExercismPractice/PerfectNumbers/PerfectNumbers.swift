
import Foundation

struct NumberClassifier {
    var classification: Number
    
    init(number: Int) {
        var array = [Int]()
        for item in 1..<number {
            if number%item == 0 {
                array.append(item)
            }
        }
        if (array.reduce(0, +)) == number {
            self.classification = .perfect
        } else if (array.reduce(0, +)) > number {
            self.classification = .abundant
        } else {
            self.classification = .deficient
        }
    }

    enum Number: Equatable{
        case perfect, deficient, abundant
    }
}
