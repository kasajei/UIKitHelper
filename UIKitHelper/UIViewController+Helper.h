//
//  UIViewController+Helper.h
//  UIKitHelperSample
//
//  Created by Yasuo Kasajima on 12/07/03.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Helper)
- (UIButton *)installAlphaButtonName:(NSString*)name size:(CGSize)size inPosition:(CGPoint)position;
- (UIButton *)installButtonNamed:(NSString*)named inPosition:(CGPoint)position;
- (UIImageView *)installImageViewWithFileName:(NSString *)fileName inPosition:(CGPoint)position;
@end
