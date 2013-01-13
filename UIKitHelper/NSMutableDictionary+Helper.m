//
//  NSMutableDictionary+Helper.m
//  PFSample
//
//  Created by Kasajima Yasuo on 12/03/05.
//  Copyright (c) 2012年 kyoto. All rights reserved.
//

#import "NSMutableDictionary+Helper.h"

@implementation NSMutableDictionary (Helper)

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
