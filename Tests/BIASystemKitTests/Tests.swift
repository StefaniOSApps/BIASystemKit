//
//  Tests.swift
//  Tests
//
//  Created by Stefan Nebel on 14.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import XCTest
import BIASystemKit

class Tests: XCTestCase {

  func testName() {
    print(UIDevice.current.formattedName)
    XCTAssertTrue(UIDevice.current.formattedName.lowercased().contains("simulator"))
  }
}
