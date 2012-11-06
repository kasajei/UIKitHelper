//
//  UIImage+PhotoHelper.m
//  CoreImageFilter
//
//  Created by Yasuo Kasajima on 12/07/09.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "UIImage+PhotoHelper.h"

@implementation UIImage (PhotoHelper)
- (UIImage *)cropImageInRect:(CGRect )rect{
    CGImageRef cgImage = CGImageCreateWithImageInRect(self.CGImage, rect);
    UIImage *img = [UIImage imageWithCGImage:cgImage];
    CGImageRelease(cgImage);
	
    return img;
}

- (UIImage *)resizeImageToWidth:(float )width{
    CGSize reSize;
    CGSize imageSize = self.size;
    reSize = CGSizeMake(width, imageSize.height*(width/imageSize.width));
    
    //リサイズ
    UIGraphicsBeginImageContext(reSize);
    
    [self drawInRect:CGRectMake(0, 0, reSize.width, reSize.height)];
    UIImage* resizedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resizedImage;
}

- (UIImage *)resizeImageToWidth:(float )width height:(float)height{
    CGSize reSize;
    reSize = CGSizeMake(width, height);
    
    //リサイズ
    UIGraphicsBeginImageContext(reSize);
    
    [self drawInRect:CGRectMake(0, 0, reSize.width, reSize.height)];
    UIImage* resizedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resizedImage;
}
@end
