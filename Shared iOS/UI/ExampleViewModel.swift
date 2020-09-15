//
//  Created by Stefan Nebel on 14.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import Foundation
import UIKit
import BIASystemKit

extension ExampleViewController {
  final class ViewModel {

    let deviceInfos: [String] = [
      "You are using a '\(BIAInfo.device(for: .current).formattedName ?? "unknown")' (\(BIAInfo.device(for: .current).modelName))",
      "Your device \(BIAInfo.secure.isJailBroken ? "is" : "is not") jailbroken.",
      "Your device has \(BIAInfo.processor.activeCount) activ of \(BIAInfo.processor.count) processors.",
      "Your system is running since \(BIAInfo.system.upTime.rounded()) ms (\(BIAInfo.system.upTime(unitsStyle: .short) ?? "n.v."))."
    ]
  }
}
