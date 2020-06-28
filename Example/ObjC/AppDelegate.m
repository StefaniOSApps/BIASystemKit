//
//  Created by Stefan Nebel on 28.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

#import "AppDelegate.h"
#import "ExampleViewModel.h"
#import "ExampleViewController.h"

@interface AppDelegate ()
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

  ExampleViewModel *viewModel = [[ExampleViewModel alloc] init];
  ExampleViewController *viewController = [[ExampleViewController alloc] initWithModel:viewModel];
  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  [self.window setRootViewController:viewController];
  [self.window makeKeyAndVisible];

  return YES;
}

@end
