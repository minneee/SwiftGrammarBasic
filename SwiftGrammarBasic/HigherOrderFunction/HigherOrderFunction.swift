//
//  HigherOrderFunction.swift
//  SwiftGrammarBasic
//
//  Created by 김민희 on 8/21/25.
//

class HigherOrderFunction {
  // 1
  let numbers = [1, 2, 3, 4, 5]
  var mapResult: [String] {
    numbers.map { String($0) }
  }

  // 2
  let numbers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  var stringEvenNumbers: [String] {
    numbers2.filter { $0 % 2 == 0 }.map { String($0) }
  }

  // 3
  func myMap(_ numbers: [Int], transform: (Int) -> String) -> [String] {
    var result: [String] = []

    for number in numbers {
      result.append(transform(number))
    }

    return result
  }

}
