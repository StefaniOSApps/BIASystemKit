//
//  ViewController.h
//  Example
//
//  Created by Stefan Nebel on 16.09.20.
//

@import UIKit;
#import "ViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ViewController : UIViewController
- (instancetype)initWithViewModel:(ViewModel *)viewModel;
@end

NS_ASSUME_NONNULL_END
