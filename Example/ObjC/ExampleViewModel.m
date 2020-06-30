//
//  Created by Stefan Nebel on 28.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

#import "ExampleViewModel.h"
@import BIASystemKit;
@import UIKit;

@implementation ExampleViewModel

- (nonnull instancetype)init {
  self = [super init];
  if (self) {
    NSMutableArray *info = [[NSMutableArray alloc] init];
    [info addObject:[[NSString alloc] initWithFormat:@"You are using a '%@' (%@)",
                     [UIDevice currentDevice].info.system.formatted.name,
                     [UIDevice currentDevice].info.system.name]];
    [info addObject:[[NSString alloc] initWithFormat:@"Your device %@ jailbroken.",
                     [[UIDevice currentDevice].info.secure isJailBroken] ? @"is" : @"is not"]];
    [info addObject:[[NSString alloc] initWithFormat:@"Your device has %ld activ of %ld processors.",
                     [[UIDevice currentDevice].info.processor activeCount],
                     [[UIDevice currentDevice].info.processor count]]];
    [info addObject:[[NSString alloc] initWithFormat:@"Your system is running since %.1f s (%@).",
                     [[UIDevice currentDevice].info.system upTime],
                     [[UIDevice currentDevice].info.system.formatted upTimeWithUnitsStyle:NSDateComponentsFormatterUnitsStyleShort]]];

    self.deviceInfos = info;
  }
  return self;
}
@end
