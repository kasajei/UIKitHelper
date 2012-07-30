//
//  UIButton+UIEasyButton.h
//  PFSample
//
//  Created by Kasajima Yasuo on 12/03/04.
//  Copyright (c) 2012年 kyoto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Helper)
+(UIButton *)buttonAlphaWithName:(NSString *)Name size:(CGSize)size withDelegate:(id)delegate;
+(UIButton *)buttonWithImageFileName:(NSString *)fileName color:(UIColor*)color withDelegate:(id)delegate;
+ (UIButton*)buttonWithImageFileName:(NSString*)fileName withDelagete:(id)delegate;
+ (UIButton*)buttonWithImageFileName:(NSString*)fileName;
- (void)setColor:(UIColor *)color;
@end
