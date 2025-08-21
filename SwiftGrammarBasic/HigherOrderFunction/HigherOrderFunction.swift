//
//  HigherOrderFunction.swift
//  SwiftGrammarBasic
//
//  Created by 김민희 on 8/21/25.
//

// 1
let numbers = [1, 2, 3, 4, 5]
let mapResult: [String] = numbers.map { String($0) }

// 2
let numbers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let stringEvenNumbers = numbers2.filter { $0 % 2 == 0 }.map { String($0) }

// 3
func myMap(_ numbers: [Int], _: (Int) -> String) -> [String] {
  var result: [String] = []

  for number in numbers {
    result.append(String(number))
  }

  return result
}
