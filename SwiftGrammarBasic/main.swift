//
//  main.swift
//  SwiftGrammarBasic
//
//  Created by 김민희 on 8/20/25.
//

import Foundation

//MARK: -  필수 문제 1 (Closure)
//print(sum(10, 20))
//
//calculate(x: 30, y: 10) {
//  return "두 수의 차는 \($0 - $1) 입니다"
//}

//MARK: - 필수문제 2 (HigherOrderFunction)
print(mapResult)
print(stringEvenNumbers)
let myMapResult = myMap([1, 2, 3, 4, 5]) {
  String($0)
}
print(myMapResult)
