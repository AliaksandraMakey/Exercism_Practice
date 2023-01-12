
import Foundation

struct ETL {
   static func transform(_ obj: [Int : [String]]) -> [String : Int]{
        var result = [String : Int]()

        for (key, value) in obj{
                value.forEach { result[$0.lowercased()] = key }
        }
        return result
    }
}
