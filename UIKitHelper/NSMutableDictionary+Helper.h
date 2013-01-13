//
//  NSMutableDictionary+Helper.h
//  PFSample
//
//  Created by Kasajima Yasuo on 12/03/05.
//  Copyright (c) 2012年 kyoto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (Helper)

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
