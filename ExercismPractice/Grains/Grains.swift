

import Foundation

class Grains {
    enum GrainsError: Error {
        case inputTooHigh(String)
        case inputTooLow(String)
    }
    
    static var total: UInt{
        var sum: UInt = 0
        for i in 1...64{
            sum += try! Grains.square(i)
        }
        return sum
    }

    static func square(_ number: Int) throws -> UInt {
          let errorString = "Input[\(number)] invalid. Input should be between 1 and 64 (inclusive)";
          guard number > 0 else {
              throw GrainsError.inputTooLow(errorString);
          }
          guard number <= 64 else {
              throw GrainsError.inputTooHigh(errorString);
          }
          
          if number == 1 { return 1; }
          return try Grains.square(number - 1) * 2;
      }
}

