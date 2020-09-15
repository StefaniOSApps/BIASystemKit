//
//  Created by Stefan Nebel on 14.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import UIKit

public final class DeviceHelper {

  /// The current version of the operating system.
  public let version: String

  /// A system name of your device like 'x86_64'.
  public let modelName: String

  /// A optional formatted Name of your device like 'iPhone XS Max'.
  public let formattedName: String?

  init(for device: UIDevice) {
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
