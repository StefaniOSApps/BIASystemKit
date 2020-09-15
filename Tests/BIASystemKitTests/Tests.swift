//
//  Created by Stefan Nebel on 14.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import XCTest
@testable import BIASystemKit

class Tests: XCTestCase {

  func testDevices() {
    let deviceModels = [
      "iPad7,5",
      "iPhone12,5",
      "iPod5,1",
      "Watch3,4",
      "x86_64"
    ]
    let deviceNames = [
      "iPad (6th Gen) (Wifi)",
      "iPhone 11 Pro Max",
      "iPod Touch 5th Generation",
      "Apple Watch Series 3 42mm case (GPS)",
      "64-bit Simulator"
    ]
    XCTAssertEqual(deviceModels.map({ Device.formattedName(modelName: $0) }), deviceNames)
  }
}
