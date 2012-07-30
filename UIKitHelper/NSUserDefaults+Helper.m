//
//  NSUserDefaults+Helper.m
//  PFSample
//
//  Created by Kasajima Yasuo on 12/03/09.
//  Copyright (c) 2012年 kyoto. All rights reserved.
//

#import "NSUserDefaults+Helper.h"

@implementation NSUserDefaults (Helper)

- (void)setImage:(UIImage *)image forKey:(NSString *)key{
    NSData *data = UIImagePNGRepresentation(image);  
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:key]; 
}

- (UIImage *)imageForKey:(NSString *)key{
    NSData* data = [[NSUserDefaults standardUserDefaults] objectForKey:key];  
    UIImage* image = [UIImage imageWithData:data];  
    
    CGImageRef imageRef = [image CGImage];  
    UIGraphicsBeginImageContext(CGSizeMake(CGImageGetWidth(imageRef), CGImageGetHeight(imageRef)));  
    [image drawAtPoint:CGPointMake(0,0)];  
    image = UIGraphicsGetImageFromCurrentImageContext();  
    UIGraphicsEndImageContext(); 
    
    return image;
}

+ (void)synchronize:(void(^)(NSUserDefaults *ud))set{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    set(ud);
    [ud synchronize];
}

+ (void)setDefault:(void(^)(NSMutableDictionary *defaults))defaults{
    // NSUserDefaultsに初期値を登録する
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    // NSUserDefaultsに初期値を登録する
    NSMutableDictionary *_defaults = [NSMutableDictionary dictionary];
    defaults(_defaults);
    [ud registerDefaults:_defaults];
    
}
@end
