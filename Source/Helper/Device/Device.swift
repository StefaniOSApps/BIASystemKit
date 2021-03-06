//
//  Created by Stefan Nebel on 14.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import Foundation
import UIKit

enum Device {
  private struct Map: Codable {
    let modelName: String
    let formatted: String
  }

  private static let filenames = [
    "device-map-ipad",
    "device-map-ipod",
    "device-map-iphone",
    "device-map-iwatch",
    "device-map-simulator",
    "device-map-tv"
  ]

  private static let list = filenames.map({ devices(filename: $0) }).flatMap({ $0 })

  private static func devices(filename: String) -> [Map] {
    guard let url = Bundle.resources.url(forResource: filename, withExtension: "json") else { return [] }

    do {
      let data = try Data(contentsOf: url)
      return try JSONDecoder().decode([Map].self, from: data)
    } catch {
      assert(false, "file: \(filename).json - \(error.localizedDescription)")
      return []
    }
  }

  static func formattedName(modelName: String) -> String? {
    return list.first(where: { $0.modelName == modelName }).map({ $0.formatted })
  }
}

fileprivate extension Bundle {
  static var resources: Bundle {
    let bundleClass = Bundle(for: DeviceHelper.self)
    let paths = Bundle.allBundles.map({ $0.bundlePath })
    let bundlePath = paths.first(where: { $0.contains("BIASystemKit_BIASystemKit.bundle") || $0.contains("BIASystemKitTests.xctest") })

    if let path = bundlePath, let bundle = Bundle(path: path) {
      return bundle
    }

    // SPM
    if let bundle = Bundle(path: bundleClass.bundlePath + "/" + "BIASystemKit_BIASystemKit.bundle") {
      return bundle
    }

    // SPM - Test
    if let bundle = Bundle(path: bundleClass.bundlePath + "/" + "BIASystemKitTests.xctest") {
      return bundle
    }

    return bundleClass
  }
}
