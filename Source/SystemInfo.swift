//
//  Created by Stefan Nebel on 30.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import Foundation
import UIKit

public enum BIAInfo {

  public static func device(for device: UIDevice) -> DeviceHelper {
    return DeviceHelper(for: device)
  }

  /// Information about the processor - like processor count
  public static var processor = ProcessorHelper.self

  /// Information about the safety of the device - like isJailBroken
  public static var secure = SecureHelper.self

  /// Information about the system - like upTime
  public static var system = SystemHelper.self
  
}


