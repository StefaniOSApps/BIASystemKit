//
//  Created by Stefan Nebel on 14.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let viewModel = ExampleViewController.ViewModel()
    let viewController = ExampleViewController(viewModel: viewModel)
    self.window = UIWindow(frame: UIScreen.main.bounds)
    self.window?.rootViewController = UINavigationController(rootViewController: viewController)
    self.window?.makeKeyAndVisible()
    return true
  }
}
