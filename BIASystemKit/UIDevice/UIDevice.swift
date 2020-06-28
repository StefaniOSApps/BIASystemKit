//
//  Created by Stefan Nebel on 14.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import UIKit


public extension UIDevice {

  @objc
  var formattedName: String {
    return DeviceHelper(modelName: modelName).formattedName
  }

  private var modelName: String {
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
