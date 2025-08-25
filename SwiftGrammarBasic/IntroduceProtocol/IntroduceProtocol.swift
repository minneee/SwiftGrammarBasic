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

//도전 문제
extension Introducible {
  func introduce() -> String {
    return "안녕하세요, 저는 \(name)입니다"
  }
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

//  필수 문제는 주석 제거, 도전 문제는 주석 추가
//  func introduce() -> String {
//    return "안녕하세요, 저는 Cat \(name)입니다"
//  }

  func meow() {
    print("\(name): 야옹")
  }
}

struct Dog: Introducible {
  var name: String

//  필수 문제는 주석 제거, 도전 문제는 주석 추가
//  func introduce() -> String {
//    return "안녕하세요, 저는 Dog \(name)입니다"
//  }

  func walk() {
    print("\(name): 산책중입니다")
  }
}
