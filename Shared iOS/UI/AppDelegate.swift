//
//  Created by Stefan Nebel on 15.09.20.
//  
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    let viewModel = ExampleViewController.ViewModel()
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = ExampleViewController(viewModel: viewModel)
    window?.makeKeyAndVisible()

    return true
  }
}
