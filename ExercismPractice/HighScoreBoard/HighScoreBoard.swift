
import Foundation

func newScoreBoard() -> [String : Int] {
    return [:]
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
    scores[name] = score
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
    for score in scores{
        if name == score.key {
            scores.removeValue(forKey: name)
        }
    }
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
 scores[name]! = 0
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
 scores[name]! += delta
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
    scores.sorted(by: <)
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
    scores.sorted { (oneValue, twoValue) -> Bool in
        return oneValue.value > twoValue.value
    }
}

