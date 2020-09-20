//
//  Created by Stefan Nebel on 14.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import Foundation
import UIKit
import BIASystemKit

extension ExampleViewController {
  final class ViewModel {

    let deviceName: String
    let modelName: String
    let deviceInfos: [String]

    init() {
      self.deviceName = BIAInfo.device(for: .current).formattedNameIfPossible
      self.modelName = BIAInfo.device(for: .current).modelName
      self.deviceInfos = [
        "Device: '\(deviceName)' (\(modelName))",
        "Jailbroken: \(BIAInfo.secure.isJailBroken)",
        "Activ processors: \(BIAInfo.processor.activeCount) of \(BIAInfo.processor.count).",
        "System upTime: \(BIAInfo.system.upTime.rounded()) ms (\(BIAInfo.system.upTime(unitsStyle: .short) ?? "n.v."))."
      ]
    }
  }
}
