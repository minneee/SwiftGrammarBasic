//
//  SolvedRetainCycle.swift
//  SwiftGrammarBasic
//
//  Created by 김민희 on 8/21/25.
//

class C {
  var friend: D?

  init() {
    print("C init")
  }

  deinit {
    print("C deinit")
  }
}

class D {
  weak var friend: C?
  var closure: (() -> Void)?

  init() {
    print("D init")
  }

  deinit {
    print("D deinit")
  }
}
