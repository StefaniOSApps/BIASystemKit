//
//  Created by Stefan Nebel on 14.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import UIKit

public final class DeviceHelper {

  /// Current version of the operating system.
  public let version: String

  /// System name like 'x86_64'.
  public let modelName: String

  /// Optional formatted name like 'iPhone XS Max'.
  public let formattedName: String?

  /// Formatted name like 'iPhone XS Max' whene aviable else system name like 'x86_64'.
  public var formattedNameIfPossible: String {
    return formattedName ?? modelName
  }

  init(for device: UIDevice = .current) {
    self.modelName = device.modelName
    self.version = device.systemVersion
    self.formattedName = Device.formattedName(modelName: modelName)
  }
}

fileprivate extension UIDevice {

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
