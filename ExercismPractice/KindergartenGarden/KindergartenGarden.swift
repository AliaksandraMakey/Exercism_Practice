
import Foundation

struct Garden {
    var gardenRow: [String]
    var childrenPlants: [String: [Plants]] = [:]
    static var allChildren = ["Alice", "Bob", "Charlie", "David",
                              "Eve", "Fred", "Ginny", "Harriet",
                              "Ileana", "Joseph", "Kincaid", "Larry"]
    
    init(_ garden: String, children: [String] = allChildren) {
        self.gardenRow = garden.components(separatedBy: "\n")
        let childrenArray = children.sorted()
        for row in gardenRow {
            for (index, character) in row.enumerated() {
                if childrenPlants[childrenArray[index / 2]] == nil {
                    childrenPlants[childrenArray[index / 2]] = []
                }
                childrenPlants[childrenArray[index / 2]]?.append(Plants(rawValue: character)!)
            }
        }
    }
    func plantsForChild(_ name: String) -> [Plants]{
        guard let childPlants = childrenPlants[name] else {return []}
        return childPlants
    }
}
enum Plants: Character {
    case violets = "V"
    case clover = "C"
    case radishes = "R"
    case grass = "G"
}

