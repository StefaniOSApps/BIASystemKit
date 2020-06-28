//
//  Created by Stefan Nebel on 28.06.20.
//  Copyright © 2020 Best-iOS-Apps. All rights reserved.
//

#import "ExampleViewController.h"

@interface ExampleViewController ()
@property ExampleViewModel *viewModel;
@end

@implementation ExampleViewController

- (nonnull instancetype)initWithModel:(ExampleViewModel *)viewModel {
  self = [super init];
  if (self) {
    self.viewModel = viewModel;
  }
  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];

  for (NSString *content in _viewModel.deviceInfos) {
    NSLog(@"%@", content);
  }
}


@end
