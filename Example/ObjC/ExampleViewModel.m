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
    self.deviceInfos = [[NSMutableArray alloc] init];
    [self.deviceInfos addObject:[[NSString alloc] initWithFormat:@"You are using a '%@'", [UIDevice currentDevice].formattedName]];
  }
  return self;
}
@end
