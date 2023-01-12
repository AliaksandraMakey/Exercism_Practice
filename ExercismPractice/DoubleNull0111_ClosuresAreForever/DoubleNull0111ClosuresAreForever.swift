
import Foundation

typealias Tuple = (String, String, String)

var flip = { (_ cable: Tuple) -> Tuple in
    return (cable.1, cable.0, cable.2)
  }

var rotate = { (_ cable: Tuple) -> Tuple in
    return (cable.1, cable.2, cable.0)
  }

func makeShuffle(
  flipper: @escaping (Tuple) -> Tuple,
  rotator: @escaping (Tuple) -> Tuple) -> (UInt8, Tuple) -> Tuple {
     { (id, tuple) in
        id.bitsNum().reduce(tuple, {(str, bit) in
            bit == 0 ? flipper(str) : rotator(str)
        })
    }
}
extension UInt8 {
    func bitsNum() -> [UInt8] {
        (0...7).map({i in (self >> i) & 1})
    }
}

