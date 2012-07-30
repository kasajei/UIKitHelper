//
//  NSUserDefaults+Helper.h
//  PFSample
//
//  Created by Kasajima Yasuo on 12/03/09.
//  Copyright (c) 2012年 kyoto. All rights reserved.
//



@interface NSUserDefaults (Helper)
- (void)setImage:(UIImage *)image forKey:(NSString *)key;
- (UIImage *)imageForKey:(NSString *)key;
+ (void)synchronize:(void(^)(NSUserDefaults *ud))set;
+ (void)setDefault:(void(^)(NSMutableDictionary *defaults))defaults;
@end
