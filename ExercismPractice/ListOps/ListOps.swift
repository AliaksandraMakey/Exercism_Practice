
import Foundation

struct ListOps {
    static func append<T>(_ firstList: [T], _ secondList: [T]) -> [T] {
        return firstList + secondList
    }
    static func concat<T>(_ arrays: Array<T>...) -> Array<T> {
        var concatArray = [T]()
        for array in arrays {
            concatArray += array
        }
        return concatArray
    }
    static func filter<T>(_ array: [T], _ predicate: (T) -> Bool) -> [T]{
        var filterArray = [T]()
        for item in array {
            if predicate(item) {
                filterArray.append(item)
            }
        }
        return filterArray
    }
    static func length<T>(_ list: [T]) -> Int {
        return list.count
    }
    static func map<T>(_ array: [T], _ function: (T) -> (T)) -> [T]{
        var newArray = [T]()
        for item in array{
            newArray.append(function(item))
        }
        return newArray
    }
    static func reverse<T>(_ array: [T]) -> [T] {
        return array.reversed()
    }
    static func foldLeft<T>(_ array: [T], accumulated: T, combine: (T,T) -> (T)) -> T {
        var result = accumulated
        if array.count == 0{
            return result
        } else {
            for item in array {
                result = combine(result, item)
            }
            return result
        }
    }
    static func foldRight<T>(_ array: [T], accumulated: T, combine: (T,T) -> (T)) -> T {
        var result = accumulated
        if array.count == 0{
            return result
        } else {
            for item in reverse(array) {
                result = combine(item, result)
            }
            return result
        }
    }
}

