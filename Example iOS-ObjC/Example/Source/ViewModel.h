//
//  ViewModel.h
//  Example
//
//  Created by Stefan Nebel on 16.09.20.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface ViewModel : NSObject
- (instancetype)initWithDevice:(UIDevice *)device;

@property NSString *formattedDeviceName;
@property NSString *modelName;
@end

NS_ASSUME_NONNULL_END
