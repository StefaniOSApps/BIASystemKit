//
//  SystemHelper.swift
//  BIASystemKit
//
//  Created by Stefan Nebel on 01.07.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import Foundation

public enum SystemHelper {

  /// The amount of time the system has been awake since the last time it was restarted.
  public static var upTime: TimeInterval {
    return ProcessInfo.processInfo.systemUptime
  }

  /// The upTime of as a optional formatted string.
  public static func upTime(unitsStyle: DateComponentsFormatter.UnitsStyle) -> String? {
    let formatter = DateComponentsFormatter()
    formatter.unitsStyle = unitsStyle
    return formatter.string(from: upTime)
  }
}
