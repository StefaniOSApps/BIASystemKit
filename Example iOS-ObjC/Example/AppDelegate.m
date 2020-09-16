//
//  AppDelegate.m
//  Example
//
//  Created by Stefan Nebel on 16.09.20.
//

#import "AppDelegate.h"
#import "ViewModel.h"
#import "ViewController.h"

@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  ViewModel *viewModel = [[ViewModel alloc] initWithDevice:UIDevice.currentDevice];
  ViewController *viewController = [[ViewController alloc] initWithViewModel:viewModel];

  self.window = [UIWindow.alloc initWithFrame:UIScreen.mainScreen.bounds];
  [self.window setRootViewController:viewController];
  [self.window makeKeyAndVisible];
  return YES;
}
@end
