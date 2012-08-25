//
//  UIViewController+Helper.m
//  UIKitHelperSample
//
//  Created by Yasuo Kasajima on 12/07/03.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "UIViewController+Helper.h"
#import "UIButton+Helper.h"
#import "UIView+Helper.h"
#import "UIImageView+Helper.h"
#import "UILabel+Helper.h"

@implementation UIViewController (Helper)
- (UIButton *)installAlphaButtonName:(NSString*)name size:(CGSize)size inPosition:(CGPoint)position{
    UIButton *btn = [UIButton buttonAlphaWithName:name size:size withDelegate:self];
    [btn setPosition:position];
    [self.view addSubview:btn];
    return btn;
}

- (UIButton *)installAlphaButtonName:(NSString*)name target:(id)target size:(CGSize)size inPosition:(CGPoint)position{
    UIButton *btn = [UIButton buttonAlphaWithName:name size:size withDelegate:target];
    [btn setPosition:position];
    [self.view addSubview:btn];
    return btn;
}

- (UIButton *)installButtonNamed:(NSString*)named inPosition:(CGPoint)position{
    UIButton *btn = [UIButton buttonWithImageFileName:named withDelagete:self];
    [btn setPosition:position];
    [self.view addSubview:btn];
    return btn;
}

- (UIButton *)installButtonNamed:(NSString*)named target:(id)target inPosition:(CGPoint)position{
    UIButton *btn = [UIButton buttonWithImageFileName:named withDelagete:target];
    [btn setPosition:position];
    [self.view addSubview:btn];
    return btn;
}

- (UIImageView *)installImageViewWithFileName:(NSString *)fileName inPosition:(CGPoint)position{
    UIImageView *imageView = [UIImageView imageViewWithFileName:fileName];
    [imageView setPosition:position];
    [self.view addSubview:imageView];
    return imageView;
}

- (UIImageView *)installImageViewWithImage:(UIImage *)image inPosition:(CGPoint)position{
    UIImageView *imageView = [UIImageView imageViewWithImage:image];
    [imageView setPosition:position];
    [self.view addSubview:imageView];
    return imageView;
}

- (UILabel *)installLabelWithText:(NSString *)text inPosition:(CGPoint)position{
    UILabel *label = [UILabel labelWithText:text];
    [label setPosition:position];
    [self.view addSubview:label];
    return label;
}
@end
