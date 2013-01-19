//
//  NSDictionary+Helper.m
//  fantagram
//
//  Created by Kasajima Yasuo on 2013/01/19.
//  Copyright (c) 2013年 kasajei. All rights reserved.
//

#import "NSDictionary+Helper.h"

@implementation NSDictionary (Helper)
- (void)setInteger:(int)value forKey:(NSString *)key{
    [self setValue:[NSNumber numberWithInt:value] forKey:key];
}

- (int)integerForKey:(NSString *)key{
    return [[self valueForKey:key] intValue];
}

- (void)setFloat:(float)value forKey:(NSString *)key{
    [self setValue:[NSNumber numberWithFloat:value] forKey:key];
}

- (float)floatForKey:(NSString*)key{
    return [[self valueForKey:key] floatValue];
}

- (void)setDouble:(double)value forKey:(NSString *)key{
    [self setValue:[NSNumber numberWithDouble:value] forKey:key];
}

- (double)doubleForKey:(NSString*)key{
    return [[self valueForKey:key] doubleValue];
}

- (void)setLongLong:(long long int)value forKey:(NSString *)key{
    [self setValue:[NSNumber numberWithLongLong:value] forKey:key];
}

- (long long int)longlongForKey:(NSString*)key{
    return [[self valueForKey:key] longLongValue];
}

- (void)setBool:(BOOL)value forKey:(NSString *)key{
    [self setValue:[NSNumber numberWithBool:value] forKey:key];
}

- (BOOL)boolForKey:(NSString *)key{
    return [[self valueForKey:key] boolValue];
}
@end
