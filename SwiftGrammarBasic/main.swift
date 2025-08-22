//
//  main.swift
//  SwiftGrammarBasic
//
//  Created by 김민희 on 8/20/25.
//

import Foundation

//MARK: -  필수 문제 1 (Closure)
print("💡 필수 문제 1 (Closure)")
let closure = Closure()
// 1
print(closure.sum(10, 20))
// 2
closure.calculate(x: 30, y: 10) {
  return "두 수의 차는 \($0 - $1) 입니다"
}

//MARK: - 필수 문제 2 (HigherOrderFunction)
print("💡 필수 문제 2 (HigherOrderFunction)")
let higherOrderFunction = HigherOrderFunction()
// 1
print(higherOrderFunction.mapResult)
// 2
print(higherOrderFunction.stringEvenNumbers)
// 3
let myMapResult = higherOrderFunction.myMap([1, 2, 3, 4, 5]) {
  String($0)
}
print(myMapResult)

//MARK: - 필수 문제 3 (FunctionChallenge)
print("💡 필수 문제 3 (FunctionChallenge)")
let functionChallenge = FunctionChallenge()
// 1
print(functionChallenge.a(numbers: [1, 2, 3, 4, 5]))
// 2
print(functionChallenge.b(strings: ["가", "나", "다", "라", "마"]))
// 3
print(functionChallenge.c(array: [1, 2, 3, 4, 5]))
print(functionChallenge.c(array: ["가", "나", "다", "라", "마"]))
// 4
print(functionChallenge.d(array: [1, 3, 5, 7, 9]))

