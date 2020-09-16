//
//  ViewController.m
//  Example
//
//  Created by Stefan Nebel on 16.09.20.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonnull) ViewModel *viewModel;
@end


@implementation ViewController
- (instancetype)initWithViewModel:(ViewModel *)viewModel {
  self = [super initWithNibName:NULL bundle:NULL];
  if (self) {
    self.viewModel = viewModel;
  }
  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];

  UILabel *label = [[UILabel alloc] init];
  [label setText:[NSString stringWithFormat:@"%@\n(%@)", self.viewModel.formattedDeviceName, self.viewModel.modelName]];
  [label setNumberOfLines:2];
  [label setTextColor:[UIColor whiteColor]];
  [label setTextAlignment:NSTextAlignmentCenter];
  [label setTranslatesAutoresizingMaskIntoConstraints:NO];
  [self.view addSubview:label];
  [self.view setBackgroundColor:[UIColor blackColor]];

  [NSLayoutConstraint activateConstraints:@[
    [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:0],
    [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:0],
    [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1 constant:0],
    [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1 constant:0]
  ]
  ];

  NSLog(@"Device: %@ (%@)", self.viewModel.formattedDeviceName, self.viewModel.modelName);
}
@end
