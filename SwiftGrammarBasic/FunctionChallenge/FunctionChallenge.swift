//
//  FunctionChallenge.swift
//  SwiftGrammarBasic
//
//  Created by 김민희 on 8/21/25.
//

class FunctionChallenge {
  // 1
  func a(numbers: [Int]) -> [Int] {
    var result: [Int] = []

    for (index, element) in numbers.enumerated() {
      if index % 2 == 0 {
        result.append(element)
      }
    }

    return result
  }

  // 2
  func b(strings: [String]) -> [String] {
    var result: [String] = []

    for (index, element) in strings.enumerated() {
      if index % 2 == 0 {
        result.append(element)
      }
    }

    return result
  }

  //3
  func c<T>(array: [T]) -> [T] {
    var result: [T] = []

    for (index, element) in array.enumerated() {
      if index % 2 == 0 {
        result.append(element)
      }
    }

    return result
  }

  //4
  func d<T: Numeric>(array: [T]) -> [T] {
    var result: [T] = []

    for element in array {
      result.append(element * 2)
    }
    
    return result
  }
}
