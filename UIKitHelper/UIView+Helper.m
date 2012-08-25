//
//  UIView+Helper.m
//  PFSample
//
//  Created by Kasajima Yasuo on 12/03/04.
//  Copyright (c) 2012年 kyoto. All rights reserved.
//

#import "UIView+Helper.h"
#import "UIButton+Helper.h"
#import "UIImageView+Helper.h"

@implementation UIView (Helper)
-(void)setPosition:(CGPoint)pos{
    CGRect frame = self.frame;
    frame.origin = pos;
    self.frame = frame;
}

-(void)setSize:(CGSize)size{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (void)setScale:(double)scale{
    CGRect beforeFrame = self.frame;
    CGAffineTransform CGScale = CGAffineTransformMakeScale(scale, scale);
    [self setTransform:CGScale];
    CGRect frame = self.frame;
    frame.origin = beforeFrame.origin;
    self.frame = frame;
}

- (UIButton *)installAlphaButtonName:(NSString*)name size:(CGSize)size inPosition:(CGPoint)position{
    UIButton *btn = [UIButton buttonAlphaWithName:name size:size withDelegate:self];
    [btn setPosition:position];
    [self addSubview:btn];
    return btn;
}

- (UIButton *)installAlphaButtonName:(NSString*)name target:(id)target size:(CGSize)size inPosition:(CGPoint)position{
    UIButton *btn = [UIButton buttonAlphaWithName:name size:size withDelegate:target];
    [btn setPosition:position];
    [self addSubview:btn];
    return btn;
}


- (UIButton *)installButtonNamed:(NSString*)named inPosition:(CGPoint)position{
    UIButton *btn = [UIButton buttonWithImageFileName:named withDelagete:self];
    [btn setPosition:position];
    [self addSubview:btn];
    return btn;
}

- (UIButton *)installButtonNamed:(NSString*)named target:(id)target inPosition:(CGPoint)position{
    UIButton *btn = [UIButton buttonWithImageFileName:named withDelagete:target];
    [btn setPosition:position];
    [self addSubview:btn];
    return btn;
}


- (UIImageView *)installImageViewWithFileName:(NSString *)fileName inPosition:(CGPoint)position{
    UIImageView *imageView = [UIImageView imageViewWithFileName:fileName];
    [imageView setPosition:position];
    [self addSubview:imageView];
    return imageView;
}

- (UIImageView *)installImageViewWithImage:(UIImage *)image inPosition:(CGPoint)position{
    UIImageView *imageView = [UIImageView imageViewWithImage:image];
    [imageView setPosition:position];
    [self addSubview:imageView];
    return imageView;
}

// タグを小さい順番に並べる
- (NSComparisonResult) compareTag:(UIView *)view{  
    if (self.tag > view.tag) {  
        return NSOrderedAscending;  
    } else if (self.tag < view.tag) {  
        return NSOrderedDescending;  
    } else {  
        return NSOrderedSame;  
    }  
} 
@end
