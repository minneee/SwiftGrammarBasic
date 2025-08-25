//
//  SortableBox.swift
//  SwiftGrammarBasic
//
//  Created by 김민희 on 8/21/25.
//

struct SortableBox<T: Comparable> {
  var items: [T]

  mutating func sortItems() {
    items.sort()
  }
}
