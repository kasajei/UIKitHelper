//
//  NSDictionary+Helper.h
//  fantagram
//
//  Created by Kasajima Yasuo on 2013/01/19.
//  Copyright (c) 2013年 kasajei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Helper)
- (void)setInteger:(int)value forKey:(NSString *)key;

- (int)integerForKey:(NSString *)key;

- (void)setFloat:(float)value forKey:(NSString *)key;

- (float)floatForKey:(NSString*)key;

- (void)setDouble:(double)value forKey:(NSString *)key;

- (double)doubleForKey:(NSString*)key;

- (void)setLongLong:(long long int)value forKey:(NSString *)key;

- (long long int)longlongForKey:(NSString*)key;

- (void)setBool:(BOOL)value forKey:(NSString *)key;

- (BOOL)boolForKey:(NSString *)key;
@end
