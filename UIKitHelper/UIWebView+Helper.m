//
//  UIWebView+Helper.m
//  PumpkinFWSample
//
//  Created by Kasajima Yasuo on 12/03/22.
//  Copyright (c) 2012年 kyoto. All rights reserved.
//

#import "UIWebView+Helper.h"

@implementation UIWebView (Helper)
- (void)loadURLString:(NSString*)URLString{
    NSString *encodedUrl = (NSString *) CFURLCreateStringByAddingPercentEscapes (NULL, (CFStringRef) URLString, NULL, NULL,kCFStringEncodingUTF8);
    NSURL *url = [NSURL URLWithString:encodedUrl];
    [encodedUrl release];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [self loadRequest:req];
}
@end
