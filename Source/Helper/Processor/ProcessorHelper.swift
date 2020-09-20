//
//  Created by Stefan Nebel on 30.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import Foundation

public enum ProcessorHelper {

  /// The number of processing cores available on the computer.
  public static let count = ProcessInfo.processInfo.processorCount

  /// The number of active processing cores available on the computer.
  public static var activeCount: Int {
    return ProcessInfo.processInfo.activeProcessorCount
  }
}
