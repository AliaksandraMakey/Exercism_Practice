
import Foundation

//func sliceSize(diameter: Double?, slices: Int?) -> Double? {
//    guard let diameterPizza = diameter else {return nil}
//    guard let slicesPizza = slices else {return nil}
//
//    var squareSlicePizza: Double = 0
//    if slicesPizza > 1 {
//        let square = (pow(diameterPizza, 2)) / 4 * 3.14159265359
//    squareSlicePizza = square/Double(slicesPizza)
//        return squareSlicePizza
//    }
//    return squareSlicePizza
//}

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    guard let diameterPizza = diameter, diameterPizza >= 0 else {return nil}
    guard let slicesPizza = slices, slicesPizza > 0 else {return nil}
    let radius = diameterPizza/2
    let square =  (radius*radius)*(Double.pi)
    return square / Double(slicesPizza)
}

func biggestSlice(diameterA: String, slicesA: String, diameterB: String, slicesB: String) -> String {

    let aSize = sliceSize(diameter: Double(diameterA), slices: Int(slicesA)) ?? -10
    let bSize = sliceSize(diameter: Double(diameterB), slices: Int(slicesB)) ?? -10

    if aSize > bSize {
        return "Slice A is bigger"
    } else if bSize > aSize {
        return "Slice B is bigger"
    }
    return "Neither slice is bigger"
}



