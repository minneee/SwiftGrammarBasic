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

//MARK: - 필수 문제 4 (IntroduceProtocol)
print("💡 필수 문제 4 (IntroduceProtocol)")
var robot = Robot(name: "피규어")
robot.name = "옵티머스"
robot.name = "옵티머스"

var introducing: [Introducible] = []
introducing.append(robot)
introducing.append(Cat(name: "나비"))
introducing.append(Dog(name: "보리"))

for item in introducing {
 print(item.introduce())

 if let robot = item as? Robot {
   robot.batteryCharge()
 } else if let cat = item as? Cat {
   cat.meow()
 } else if let dog = item as? Dog {
   dog.walk()
 }
}

//MARK: - 필수 문제 5 (DeliveryService)
print("💡 필수 문제 5 (DeliveryService)")
checkDeliveryStatus(for: "서울시", status: .inTransit(daysRemaining: 5))
checkDeliveryStatus(for: "", status: .inTransit(daysRemaining: 1))
checkDeliveryStatus(for: "서울시", status: .error)
checkDeliveryStatus(for: "서울시", status: .notStarted)

//MARK: - 도전 문제 1 (CarInheritance)
print("🔍 도전 문제 1 (CarInheritance)")
let hybridCar = HybridCar(brand: "현대", model: "그랜저", year: "2025", engine: .HydrogenEngine)
hybridCar.driving()
hybridCar.stop()
hybridCar.refuel()
hybridCar.switchEngine(to: .electricEngine)
print("======")
let electricCar = ElectricCar(brand: "tesla", model: "Model 3", year: "2020")
electricCar.driving()
electricCar.refuel()
electricCar.stop()

//MARK: - 도전 문제 2 (SortableBox)
print("🔍 도전 문제 2 (SortableBox)")
var sortableBox = SortableBox(items: [423, 2, 65, 4, 2234, 63])
print(sortableBox.items)
sortableBox.sortItems()
print(sortableBox.items)

//MARK: - 도전 문제 4 (RetainCycle)
print("🔍 도전 문제 4 (RetainCycle)")
var a: A? = A()
var b: B? = B()

//서로 강하게 참조
a?.friend = b
b?.friend = a

b?.closure = {
 guard let a = a else { return }
 print("friend: \(a)")
}
b?.closure?()

//nil을 설정해도 deinit 호출안됨
a = nil
b = nil

print("======")

class E {
  var c: C? = C()
  var d: D? = D()

  func e() {
    c?.friend = d
    d?.friend = c

    d?.closure = { [weak self] in
      guard let self else { return }
      print("friend: \(self.c)")
    }

    d?.closure?()
  }

  deinit {
    print("E deinit")
  }
}

var e: E? = E()
e?.e()
e = nil
