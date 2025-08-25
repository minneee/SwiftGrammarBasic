//
//  HybridCar.swift
//  SwiftGrammarBasic
//
//  Created by 김민희 on 8/22/25.
//


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