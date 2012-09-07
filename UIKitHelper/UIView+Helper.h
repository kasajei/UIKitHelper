//
//  UIView+Helper.h
//  PFSample
//
//  Created by Kasajima Yasuo on 12/03/04.
//  Copyright (c) 2012年 kyoto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Helper)
-(void)setPosition:(CGPoint)pos;
-(void)setSize:(CGSize)size;
- (void)setScale:(double)scale;

- (UIButton *)installAlphaButtonName:(NSString*)name size:(CGSize)size inPosition:(CGPoint)position;
- (UIButton *)installAlphaButtonName:(NSString*)name target:(id)target size:(CGSize)size inPosition:(CGPoint)position;
- (UIButton *)installButtonNamed:(NSString*)named inPosition:(CGPoint)position;
- (UIButton *)installButtonNamed:(NSString*)named target:(id)target inPosition:(CGPoint)position;
- (UIImageView *)installImageViewWithFileName:(NSString *)fileName inPosition:(CGPoint)position;
- (UIImageView *)installImageViewWithImage:(UIImage *)image inPosition:(CGPoint)position;

- (NSComparisonResult) compareTag:(UIView*)view;
@end
