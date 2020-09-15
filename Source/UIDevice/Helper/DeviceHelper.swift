//
//  Created by Stefan Nebel on 14.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import Foundation
import UIKit

public class DeviceHelper {
  private let device: UIDevice

  /// The current version of the operating system.
  public let version: String

  /// A system name of your device like 'x86_64'.
  public let modelName: String

  /// A optional formatted Name of your device like 'iPhone XS Max'.
  public var formattedName: String? {
    return Device.list.first(where: { $0.modelName == modelName }).map({ $0.formatted })
  }

  init(for device: UIDevice) {
    self.device = device
    self.modelName = device.modelName
    self.version = device.systemVersion
  }
}

extension UIDevice {

  var modelName: String {
    var systemInfo = utsname()
    uname(&systemInfo)
    let machineMirror = Mirror(reflecting: systemInfo.machine)
    let identifier = machineMirror.children.reduce("") { identifier, element in
      guard let value = element.value as? Int8, value != 0 else { return identifier }
      return identifier + String(UnicodeScalar(UInt8(value)))
    }
    return identifier
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
    guard let url = Bundle.module.url(forResource: filename, withExtension: "json") else { return [] }

    do {
      let data = try Data(contentsOf: url)
      return try JSONDecoder().decode([Map].self, from: data)
    } catch {
      assert(false, "file: \(filename).json - \(error.localizedDescription)")
      return []
    }
  }
}
