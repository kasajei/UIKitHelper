//
//  UIImageView+Helper.h
//  PFSample
//
//  Created by Kasajima Yasuo on 12/03/08.
//  Copyright (c) 2012年 kyoto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (Helper)
+(UIImageView*)imageViewWithImage:(UIImage*)image;
+(UIImageView*)imageViewWithFileName:(NSString*)fileName;
+(UIImageView*)imageViewWithFileName:(NSString*)fileName withColor:(UIColor*)color;
- (void) maskImageViewWithMask:(UIImage *)maskImage;
@end
