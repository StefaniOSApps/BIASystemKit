//
//  Created by Stefan Nebel on 30.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import Foundation

@objcMembers
public class SecureHelper: NSObject {

  /// Checks if your device is jailbroken.
  public let isJailBroken: Bool = {
    let cydiaPath = "/Applications/Cydia.app"
    let aptPath = "/private/var/lib/apt/"
    return [cydiaPath, aptPath].map({ FileManager.default.fileExists(atPath: $0) }).contains(true)
  }()
}
