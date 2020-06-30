//
//  Created by Stefan Nebel on 14.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import Foundation
import UIKit

extension ExampleViewController {
  final class ViewModel {

    let deviceInfos: [String] = [
      "You are using a '\(UIDevice.current.info.system.formatted.name ?? "unknown")' (\(UIDevice.current.info.system.name))",
      "Your device \(UIDevice.current.info.secure.isJailBroken ? "is" : "is not") jailbroken.",
      "Your device has \(UIDevice.current.info.processor.activeCount) activ of \(UIDevice.current.info.processor.count) processors.",
      "Your system is running since \(UIDevice.current.info.system.upTime.rounded()) ms (\(UIDevice.current.info.system.formatted.upTime(unitsStyle: .short) ?? "n.v."))."
    ]
  }
}
