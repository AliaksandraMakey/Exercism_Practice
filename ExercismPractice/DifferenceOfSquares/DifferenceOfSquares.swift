//
//  DifferenceOfSquares.swift
//  ExercismPractice
//
//  Created by aaa on 15.01.23.
//

import Foundation

class Squares {
    var squareOfSum: Int
    var sumOfSquares: Int
    var differenceOfSquares: Int
    
    init(_ number: Int) {
        var array = [Int]()
        for i in 1...number {
            array.append(i)
        }
        self.squareOfSum = Squares.squaredOfSum(array: array)
        self.sumOfSquares = Squares.sumOfSquares(array: array)
        self.differenceOfSquares = self.squareOfSum - self.sumOfSquares
    }
    static func sumOfSquares(array: [Int]) -> Int {
        let powArray = array.map({ Int(Double($0) * Double($0)) })
        return powArray.reduce(0, +)
    }
    static func squaredOfSum(array: [Int]) -> Int {
        let sum = array.reduce(0, +)
        return Int(Double(sum) * Double(sum))
    }
}
