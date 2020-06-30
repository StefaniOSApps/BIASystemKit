//
//  Created by Stefan Nebel on 30.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import Foundation

@objcMembers
public class ProcessorHelper: NSObject {

  /// The number of processing cores available on the computer.
  public let count: Int = {
    return ProcessInfo.processInfo.processorCount
  }()

  /// The number of active processing cores available on the computer.
  public var activeCount: Int {
    return ProcessInfo.processInfo.activeProcessorCount
  }
}
