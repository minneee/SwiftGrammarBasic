//
//  DeliveryService.swift
//  SwiftGrammarBasic
//
//  Created by 김민희 on 8/21/25.
//

enum DeliveryStatus {
  case notStarted
  case inTransit(daysRemaining: Int)
  case error
}

enum DeliveryError: Error {
  case invalidAddress
  case notStarted
  case systemError(reason: String)
}

func predictDeliveryDay(for address: String, status: DeliveryStatus) throws -> String {
  if address.isEmpty {
    throw DeliveryError.invalidAddress
  }

  switch status {
  case .notStarted:
    throw DeliveryError.notStarted
  case .inTransit(let daysRemaining):
    return "배송까지 \(daysRemaining)일 남았습니다"
  case .error:
    throw DeliveryError.systemError(reason: "시스템 에러가 발생했습니다")
  }
}

func checkDeliveryStatus(for address: String, status: DeliveryStatus) {
  do {
    let message = try predictDeliveryDay(for: address, status: status)
    print("✅ \(message)")
  } catch DeliveryError.invalidAddress {
    print("⛔️ 주소를 다시 확인해주세요")
  } catch DeliveryError.notStarted {
    print("⛔️ 배송이 시작되지 않았습니다")
  } catch DeliveryError.systemError(let reason) {
    print("⛔️ 에러발생: \(reason)")
  } catch {
    print("⛔️ 알 수 없는 에러가 발생했습니다")
  }
}
