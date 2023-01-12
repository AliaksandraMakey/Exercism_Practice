

import Foundation

    
func getCard(at index: Int, from stack: [Int]) -> Int {
        return stack[index]
    }
    func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
        var stackCards = stack
        if index >= 0 && index < stack.count {
            stackCards[index] = newCard
        }
        return stackCards
    }
    func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
        var stackCards = stack
        stackCards.append(newCard)
        return stackCards
    }
    func removeCard(at index: Int, from stack: [Int]) -> [Int] {
        var stackCards = stack
        if index < stackCards.count && index >= 0 {
            stackCards.remove(at: index)
        }
        return stackCards
    }
    func removeTopCard(_ stack: [Int]) -> [Int] {
        var array = stack
        if !array.isEmpty {
            array.removeLast()
        }
        return array
    }
    func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
        var stackCards = stack
        stackCards.insert(newCard, at: 0)
        return stackCards
    }
    func removeBottomCard(_ stack: [Int]) -> [Int] {
        var array = stack
        if !array.isEmpty {
            array.removeFirst()
        }
        return array
    }
    func checkSizeOfStack(_ stack: [Int], _ size: Int ) -> Bool {
        if size == stack.count {
            return true
        } else {
            return false
        }
    }
    func evenCardCount(_ stack: [Int]) -> Int  {
        var counter = 0
        for i in 0..<stack.count {
            if stack[i] % 2 == 0 {
                counter += 1
            }
        }
        return counter
    }

