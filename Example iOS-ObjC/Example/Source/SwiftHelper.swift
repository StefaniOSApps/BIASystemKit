//
//  SwiftHelper.swift
//  Example
//
//  Created by Stefan Nebel on 16.09.20.
//

import Foundation
import BIASystemKit
import UIKit

@objcMembers
class SwiftHelper: NSObject {

  class func formattedName(device: UIDevice) -> String {
    return BIAInfo.device(for: device).formattedNameIfPossible
  }

  class func modelName(device: UIDevice) -> String {
    return BIAInfo.device(for: device).modelName
  }
}
