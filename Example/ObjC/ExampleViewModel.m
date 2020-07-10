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

    BIASystemInfo *info = UIDevice.currentDevice.info;

    NSMutableArray *arr = [[NSMutableArray alloc] init];
    [arr addObject:[[NSString alloc] initWithFormat:@"You are using a '%@' (%@)",
                     info.system.formatted.name,
                     info.system.name]];
    [arr addObject:[[NSString alloc] initWithFormat:@"Your device %@ jailbroken.",
                     info.secure.isJailBroken ? @"is" : @"is not"]];
    [arr addObject:[[NSString alloc] initWithFormat:@"Your device has %ld activ of %ld processors.",
                     info.processor.activeCount,
                     info.processor.count]];
    [arr addObject:[[NSString alloc] initWithFormat:@"Your system is running since %.1f s (%@).",
                     info.system.upTime,
                     [info.system.formatted upTimeWithUnitsStyle:NSDateComponentsFormatterUnitsStyleShort]]];
    self.deviceInfos = arr;
  }
  return self;
}
@end
