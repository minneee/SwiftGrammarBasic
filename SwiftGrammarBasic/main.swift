//
//  main.swift
//  SwiftGrammarBasic
//
//  Created by 김민희 on 8/20/25.
//

import Foundation

//MARK: -  필수 문제 1 (Closure)
let closure = Closure()

print(closure.sum(10, 20))

closure.calculate(x: 30, y: 10) {
  return "두 수의 차는 \($0 - $1) 입니다"
}

//MARK: - 필수문제 2 (HigherOrderFunction)
let higherOrderFunction = HigherOrderFunction()

print(higherOrderFunction.mapResult)

print(higherOrderFunction.stringEvenNumbers)

let myMapResult = higherOrderFunction.myMap([1, 2, 3, 4, 5]) {
  String($0)
}
print(myMapResult)
