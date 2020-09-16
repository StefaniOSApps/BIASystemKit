//
//  ViewModel.m
//  Example
//
//  Created by Stefan Nebel on 16.09.20.
//

@import UIKit;
#import "ViewModel.h"
#import "Example-Swift.h"

@implementation ViewModel
- (instancetype)initWithDevice:(UIDevice *)device {
  self = [super init];
  if (self) {
    self.formattedDeviceName = [SwiftHelper formattedNameWithDevice:device];
    self.modelName = [SwiftHelper modelNameWithDevice:device];
  }
  return self;
}
@end
