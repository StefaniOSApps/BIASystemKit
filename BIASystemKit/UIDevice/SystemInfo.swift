//
//  Created by Stefan Nebel on 30.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import Foundation
import UIKit

@objcMembers
public class BIASystemInfo: NSObject {

  private let device: UIDevice

  /// Information about the processor - like processor count
  public var processor = ProcessorHelper()

  /// Information about the safety of the device - like isJailBroken
  public var secure = SecureHelper()

  /// Information about the system - like upTime
  public var system: SystemHelper

  internal init(device: UIDevice) {
    self.device = device
    self.system = SystemHelper(device: device)
  }
}
