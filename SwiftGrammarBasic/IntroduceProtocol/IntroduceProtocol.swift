//
//  IntroduceProtocol.swift
//  SwiftGrammarBasic
//
//  Created by 김민희 on 8/21/25.
//

protocol Introducible {
  var name: String { get }

  func introduce() -> String
}

struct Robot: Introducible {
  var name: String {
    didSet {
      guard name != oldValue else { return }

      print("name 변경 알림")
      print("변경 이전 값:\(oldValue)")
      print("변경 이후 값:\(name)")
    }
  }

  func introduce() -> String {
    return "안녕하세요, 저는 Robot \(name)입니다"
  }

  func batteryCharge() {
    print("\(name): 배터리 충전중입니다")
  }
}

struct Cat: Introducible {
  var name: String

  func introduce() -> String {
    return "안녕하세요, 저는 Cat \(name)입니다"
  }

  func meow() {
    print("\(name): 야옹")
  }
}

struct Dog: Introducible {
  var name: String

  func introduce() -> String {
    return "안녕하세요, 저는 Dog \(name)입니다"
  }

  func walk() {
    print("\(name): 산책중입니다")
  }
}
