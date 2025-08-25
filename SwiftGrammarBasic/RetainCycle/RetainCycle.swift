//
//  RetainCycle.swift
//  SwiftGrammarBasic
//
//  Created by 김민희 on 8/21/25.
//

class A {
  var friend: B?

  init() {
    print("A init")
  }

  deinit {
    print("A deinit")
  }
}

class B {
  var friend: A?
  var closure: (() -> Void)?

  init() {
    print("B init")
  }

  deinit {
    print("B deinit")
  }
}
