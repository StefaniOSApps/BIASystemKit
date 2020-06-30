//
//  SystemHelper.swift
//  BIASystemKit
//
//  Created by Stefan Nebel on 01.07.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import Foundation
import UIKit

@objcMembers
public class SystemHelper: NSObject {

  private let device: UIDevice

  internal init(device: UIDevice) {
    self.device = device
    self.formatted = SystemHelperFormatted(device: device)
    super.init()

    self.formatted.helper = self
  }

  /// A system name of your device like 'x86_64'.
  public var name: String {
    return device.modelName
  }

  /// Formatted strings
  public let formatted: SystemHelperFormatted

  /// The amount of time the system has been awake since the last time it was restarted.
  public var upTime: TimeInterval {
    return ProcessInfo.processInfo.systemUptime
  }

  /// The current version of the operating system.
  public var version: String {
    return device.systemVersion
  }
}

@objcMembers
public class SystemHelperFormatted: NSObject {

  var helper: SystemHelper?
  private let device: UIDevice

  internal init(device: UIDevice) {
    self.device = device
  }

  /// A optional formatted Name of your device like 'iPhone XS Max'.
  public var name: String? {
    guard let name = helper?.name else { return nil }

    return DeviceHelper(modelName: name).formattedName
  }

  /// The upTime of as a optional formatted string.
  public func upTime(unitsStyle: DateComponentsFormatter.UnitsStyle) -> String? {
    guard let upTime = helper?.upTime else { return nil }

    let formatter = DateComponentsFormatter()
    formatter.unitsStyle = unitsStyle
    return formatter.string(from: upTime)
  }
}
