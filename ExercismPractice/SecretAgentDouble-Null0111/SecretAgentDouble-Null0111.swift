
import Foundation

func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    func protected(_ pin: String) -> String {
        let sec = secret
        let pas = password
        return pin == pas ? sec : "Sorry. No hidden secrets here."
      }
      return protected
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let numOne = f(room)
  let  numTwo = f(numOne)
  let  numThree = f(numTwo)
    return (numOne, numTwo, numThree)
}



var s = protectSecret("secret", withPassword: "password")

func makeCombo(_ x: Int) -> Int {
  (x * 13) % 256
}

func makeCombo2(_ x: Int) -> Int {
  (x * 13) % 2
}
