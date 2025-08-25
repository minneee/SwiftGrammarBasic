//
//  CarInheritance.swift
//  SwiftGrammarBasic
//
//  Created by 김민희 on 8/21/25.
//

enum Engine {
  case gasoline
  case electricEngine
  case HydrogenEngine
}

class Car {
  private var brand: String
  private var model: String
  private var year: String
  fileprivate var engine: Engine

  init(brand: String, model: String, year: String, engine: Engine) {
    self.brand = brand
    self.model = model
    self.year = year
    self.engine = engine
  }

  internal func driving() {
    print("Car 주행중")
  }

  internal func stop() {
    print("Car 멈추기")
  }

  internal func refuel() {
    print("연료 공급")
  }
}

final class ElectricCar: Car {
  public init(brand: String, model: String, year: String) {
    let engine: Engine = .electricEngine
    super.init(brand: brand, model: model, year: year, engine: engine)
  }

  override func driving() {
    print("전기 자동차 주행중")
  }

  override func refuel() {
    print("전기 자동차 배터리 충전")
  }
}

final class HybridCar: Car {
  override init(brand: String, model: String, year: String, engine: Engine) {
    super.init(brand: brand, model: model, year: year, engine: engine)
  }

  override func refuel() {
    super.refuel()
    print("\(engine) 공급")
  }

  func switchEngine(to engine: Engine) {
    self.engine = engine
    print("엔진을 \(engine)으로 바꿈")
  }
}
/*
 프로토콜을 사용하면 채택한 곳에서 무조건 구현해야하고,
 상속을 사용하면 필수적으로 구현하지 않아도 부모 클래스에서 구현한 내용을 그대로 사용할 수 있다.
 그래서 구현부가 공통으로 필요한 부분은 상속을 사용하는 것이 중복 코드를 줄일 수 있고, 정의만 같고 구현부분이 다른 부분은 프로토콜을 사용하는것이 좋다.
 그 외에
 상속은 다중상속이 불가능하며 클래스에서만 사용할 수 있고,
 프로토콜 다중채택이 가능하며 클래스/구조체/열거형 모두에서 사용가능하다는 차이점이 있습니다.
*/
