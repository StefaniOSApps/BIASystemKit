//
//  Created by Stefan Nebel on 14.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import Foundation

class DeviceHelper {
  private let modelName: String

  init(modelName: String) {
    self.modelName = modelName
  }

  var formattedName: String? {
    return Device.list.first(where: { $0.modelName == modelName }).map({ $0.formatted })
  }
}

// MARK: Resources
private enum Device {
  struct Map: Codable {
    let modelName: String
    let formatted: String
  }

  static let filenames = [
    "device-map-ipad",
    "device-map-ipod",
    "device-map-iphone",
    "device-map-iwatch",
    "device-map-simulator"
  ]

  static let list = filenames.map({ devices(filename: $0) }).flatMap({ $0 })

  static func devices(filename: String) -> [Map] {
    guard let url = Bundle(for: DeviceHelper.self).url(forResource: filename, withExtension: "json") else { return [] }

    do {
      let data = try Data(contentsOf: url)
      return try JSONDecoder().decode([Map].self, from: data)
    } catch {
      assert(false, "file: \(filename).json - \(error.localizedDescription)")
      return []
    }
  }
}
