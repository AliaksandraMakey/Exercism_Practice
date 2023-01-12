
import Foundation

func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}

func preparationTimeInMinutes(layers: String...) -> Int {
    return layers.count * 2
}

func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
    var noudlesAndSauce: (Int, Double) = (0, 0.0)
    for i in layers{
        if i == "noodles" {
            noudlesAndSauce.0 += 3
        } else if i == "sauce" {
            noudlesAndSauce.1 += 0.2
        }
  }
    return noudlesAndSauce
}

func toOz(_ layers: inout (noodles: Int, sauce:  Double)){
    layers.sauce *= 33.814
}

func redWine(layers: String...) -> Bool {
        var redVineCount = [String]()
        var whiteVineCount = [String]()
        for i in layers{
            if i == "mozzarella" || i == "béchamel" || i == "ricotta" {
                whiteVineCount.append(i)
            } else if i == "sauce" || i == "meat" {
                redVineCount.append(i)
            }
      }
    return redVineCount.count >= whiteVineCount.count
}
