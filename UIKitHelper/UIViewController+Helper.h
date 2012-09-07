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
- (UIButton *)installAlphaButtonName:(NSString*)name target:(id)target size:(CGSize)size inPosition:(CGPoint)position;
- (UIButton *)installButtonNamed:(NSString*)named inPosition:(CGPoint)position;
- (UIButton *)installButtonNamed:(NSString*)named target:(id)target inPosition:(CGPoint)position;
- (UIImageView *)installImageViewWithFileName:(NSString *)fileName inPosition:(CGPoint)position;
- (UIImageView *)installImageViewWithImage:(UIImage *)image inPosition:(CGPoint)position;
- (UILabel *)installLabelWithText:(NSString *)text inPosition:(CGPoint)position;
@end
