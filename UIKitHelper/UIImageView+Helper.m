//
//  UIImageView+Helper.m
//  PFSample
//
//  Created by Kasajima Yasuo on 12/03/08.
//  Copyright (c) 2012年 kyoto. All rights reserved.
//

#import "UIImageView+Helper.h"
#import "UIImage+Helper.h"

@implementation UIImageView (Helper)

+(UIImageView*)imageViewWithImage:(UIImage*)image{
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    CGRect frame = imageView.frame;
    frame.size.width = image.size.width * 0.5;
    frame.size.height = image.size.height * 0.5;
    imageView.frame = frame;
    return imageView;
}

+(UIImageView*)imageViewWithFileName:(NSString*)fileName{
    UIImage *image = [UIImage imageLocalizedNamed:fileName];
    UIImageView *imageView = [UIImageView imageViewWithImage:image];
    return imageView;
}

+(UIImageView*)imageViewWithFileName:(NSString*)fileName withColor:(UIColor*)color{
    UIImage *image = [UIImage imageLocalizedNamed:fileName withColor:color];
    UIImageView *imageView = [UIImageView imageViewWithImage:image];
    return imageView;
}

- (void) maskImageViewWithMask:(UIImage *)maskImage {
    UIImage *maskedImage = [self.image maskImage:self.image withMask:maskImage];
    [self setImage:maskedImage];
}


@end
