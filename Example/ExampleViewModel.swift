//
//  Created by Stefan Nebel on 14.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import Foundation
import UIKit

extension ExampleViewController {
  final class ViewModel {
    let deviceInfos: [String] = [
      "You are using a '\(UIDevice.current.formattedName)'"
    ]
  }
}
