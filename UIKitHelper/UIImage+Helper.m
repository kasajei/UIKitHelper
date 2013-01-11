//
//  UIImage+LocalizedImage.m
//  PFSample
//
//  Created by Kasajima Yasuo on 12/03/04.
//  Copyright (c) 2012年 kyoto. All rights reserved.
//

#import "UIImage+Helper.h"

@implementation UIImage (Helper)
+(UIImage*)imageLocalizedNamed:(NSString *)name{
    NSString *localizedName;
    
    NSArray *languages = [NSLocale preferredLanguages];
    NSString *lang = [languages objectAtIndex:0];
    localizedName = [NSString stringWithFormat:@"%@_%@",name,lang];
    UIImage *image = [UIImage imageNamed:localizedName];
    if (!image) {
        image = [UIImage imageNamed:name];
    }
    return image;
}


+ (UIImage *)colorImage:(UIImage *)img withColor:(UIColor *)color{
    // begin a new image context, to draw our colored image onto
    UIGraphicsBeginImageContext(img.size);
    
    // get a reference to that context we created
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // set the fill color
    [color setFill];
    
    // translate/flip the graphics context (for transforming from CG* coords to UI* coords
    CGContextTranslateCTM(context, 0, img.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    // set the blend mode to color burn, and the original image
    CGContextSetBlendMode(context, kCGBlendModeMultiply);
    
    CGRect rect = CGRectMake(0, 0, img.size.width, img.size.height);
    CGContextDrawImage(context, rect, img.CGImage);
    
    // set a mask that matches the shape of the image, then draw (color burn) a colored rectangle
    CGContextClipToMask(context, rect, img.CGImage);
    CGContextAddRect(context, rect);
    CGContextDrawPath(context,kCGPathFill);
    
    // generate a new UIImage from the graphics context we drew onto
    UIImage *coloredImg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return coloredImg;
}

+ (UIImage *)imageNamed:(NSString *)name withColor:(UIColor *)color{
    UIImage *img = [UIImage imageNamed:name];
    if (!img) 
        return nil;
    
    UIImage* coloredImg = [UIImage colorImage:img withColor:color];
    
    //return the color-burned image
    return coloredImg;

}

+ (UIImage *)imageLocalizedNamed:(NSString *)name withColor:(UIColor *)color{
    NSString *localizedName;
    
    NSArray *languages = [NSLocale preferredLanguages];
    NSString *lang = [languages objectAtIndex:0];
    localizedName = [NSString stringWithFormat:@"%@_%@",name,lang];
    UIImage *image = [UIImage imageNamed:localizedName withColor:color];
    if (!image) {
        image = [UIImage imageNamed:name withColor:color];
    }
    return image;
}


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

    UIGraphicsBeginImageContext(reSize);
    
    [self drawInRect:CGRectMake(0, 0, reSize.width, reSize.height)];
    UIImage* resizedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resizedImage;
}

- (UIImage *) rotateImage:(UIImage *)img angle:(int)angle
{
    CGImageRef imgRef = [img CGImage];
    CGContextRef context;
    
    switch (angle) {
        case 90:
            UIGraphicsBeginImageContext(CGSizeMake(img.size.height, img.size.width));
            context = UIGraphicsGetCurrentContext();
            CGContextTranslateCTM(context, img.size.height, img.size.width);
            CGContextScaleCTM(context, 1.0, -1.0);
            CGContextRotateCTM(context, M_PI/2.0);
            break;
        case 180:
            UIGraphicsBeginImageContext(CGSizeMake(img.size.width, img.size.height));
            context = UIGraphicsGetCurrentContext();
            CGContextTranslateCTM(context, img.size.width, 0);
            CGContextScaleCTM(context, 1.0, -1.0);
            CGContextRotateCTM(context, -M_PI);
            break;
        case 270:
            UIGraphicsBeginImageContext(CGSizeMake(img.size.height, img.size.width));
            context = UIGraphicsGetCurrentContext();
            CGContextScaleCTM(context, 1.0, -1.0);
            CGContextRotateCTM(context, -M_PI/2.0);
            break;
        default:
            NSLog(@"90, 180, 270度のみの対応です");
            return nil;
    }
    CGContextDrawImage(context, CGRectMake(0, 0, img.size.width, img.size.height), imgRef);
    UIImage *resultImg = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    return resultImg;
}

@end
