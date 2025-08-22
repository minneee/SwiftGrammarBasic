//
//  Closure.swift
//  SwiftGrammarBasic
//
//  Created by 김민희 on 8/20/25.
//

class Closure {
  // 1
  let sum: (Int, Int) -> String = {
    return "두 수의 합은 \($0 + $1) 입니다"
  }
  // 2
  func calculate(x: Int, y: Int, operation: (Int, Int) -> String) {
    let result = operation(x, y)
    print(result)
  }
}

