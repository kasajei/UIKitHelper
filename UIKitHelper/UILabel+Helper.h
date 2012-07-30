//
//  UILabel+UIEasyLabel.h
//  PFSample
//
//  Created by Kasajima Yasuo on 12/03/04.
//  Copyright (c) 2012年 kyoto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Helper)

+(UILabel*)labelWithText:(NSString*)text;
- (void)reSize;
- (void)reSizeFixCenter;
@end
