//
//  Created by Stefan Nebel on 14.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import Foundation

class DeviceHelper {

  struct DeviceMap: Codable {
    let modelName: String
    let formatted: String
  }

  private let modelName: String

  init(modelName: String) {
    self.modelName = modelName
  }

  var formattedName: String {
    return DeviceHelper.deviceList.first(where: { $0.modelName == modelName }).map({ $0.formatted }) ?? modelName
  }
}

// MARK: Ressources
private extension DeviceHelper {

  static let deviceList = iPadList + iPhoneList + iPodList + iWatchList + simulatorList
  static let iPadList = devices(filename: "device-map-ipad")
  static let iPodList = devices(filename: "device-map-ipod")
  static let iPhoneList = devices(filename: "device-map-iphone")
  static let iWatchList = devices(filename: "device-map-iwatch")
  static let simulatorList = devices(filename: "device-map-simulator")

  private static func devices(filename: String) -> [DeviceMap] {
    guard let url = Bundle(for: self).url(forResource: filename, withExtension: "json") else { return [] }

    do {
      let data = try Data(contentsOf: url)
      return try JSONDecoder().decode([DeviceMap].self, from: data)
    } catch {
      assert(false, "file: \(filename).json - \(error.localizedDescription)")
      return []
    }
  }
}
