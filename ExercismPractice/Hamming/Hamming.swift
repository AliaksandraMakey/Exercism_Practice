
import Foundation

struct Hamming {
  static func compute(_ one: String, against two: String) -> Int? {
      guard one.count == two.count else { return nil }
       return zip(one, two).filter { $0 != $1 }.count
    }
}


