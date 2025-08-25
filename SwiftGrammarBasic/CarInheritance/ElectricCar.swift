//
//  ElectricCar.swift
//  SwiftGrammarBasic
//
//  Created by 김민희 on 8/22/25.
//


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
