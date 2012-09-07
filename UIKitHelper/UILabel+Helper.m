//
//  UILabel+UIEasyLabel.m
//  PFSample
//
//  Created by Kasajima Yasuo on 12/03/04.
//  Copyright (c) 2012年 kyoto. All rights reserved.
//

#import "UILabel+Helper.h"

@implementation UILabel (Helper)
+(UILabel *)labelWithText:(NSString *)text{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    label.text = text;
    label.backgroundColor = [UIColor colorWithWhite:1 alpha:0];
    // サイズを合わせる
    CGSize textSize = [[label text] sizeWithFont:[label font]];
    
    // テキストのサイズが画面サイズより大きかったら小さくする。
    CGSize winSize = [UIScreen mainScreen].bounds.size;
    if (winSize.width<textSize.width) {
        textSize.width = winSize.width;
    }
    CGRect frame = label.frame;
    frame.size = textSize;
    label.frame = frame;
    
    // もしテキストが入りきらない場合は小さくする。
    label.adjustsFontSizeToFitWidth = YES;
    label.minimumFontSize = 10;
    
    return label;
}

- (void)reSize{
    // サイズを合わせる
    CGSize winSize = [UIScreen mainScreen].bounds.size;
    CGSize textSize = [[self text] sizeWithFont:[self font]];
    CGRect frame = self.frame;
    textSize.width = textSize.width>winSize.width ? winSize.width : textSize.width;
    frame.size = textSize;
    self.frame = frame;
}

- (void)reSizeFixCenter{
    CGPoint center = self.center;
    // サイズを合わせる
    CGSize winSize = [UIScreen mainScreen].bounds.size;
    CGSize textSize = [[self text] sizeWithFont:[self font]];
    CGRect frame = self.frame;
    textSize.width = textSize.width>winSize.width ? winSize.width : textSize.width;
    frame.size = textSize;
    self.frame = frame;
    
    self.center = center;
}
@end
