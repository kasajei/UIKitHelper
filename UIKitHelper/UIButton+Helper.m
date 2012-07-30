//
//  UIButton+UIEasyButton.m
//  PFSample
//
//  Created by Kasajima Yasuo on 12/03/04.
//  Copyright (c) 2012年 kyoto. All rights reserved.
//

#import "UIButton+Helper.h"
#import "UIImage+Helper.h"

@implementation UIButton (Helper)
+(UIButton *)buttonAlphaWithName:(NSString *)Name size:(CGSize)size withDelegate:(id)delegate{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, size.width, size.height);
    NSString *string = [NSString stringWithFormat:@"press%@:",Name];
    [button addTarget:delegate action:NSSelectorFromString(string) forControlEvents:UIControlEventTouchUpInside];
    return button;
}

+(UIButton *)buttonWithImageFileName:(NSString *)fileName color:(UIColor*)color withDelegate:(id)delegate{
    UIButton *button;
    
    // imageを設定
    UIImage *image = [UIImage imageLocalizedNamed:fileName withColor:color];
    if (!image) {
        button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button setTitle:fileName forState:UIControlStateNormal];
        CGRect frame = button.frame;
        frame.size = CGSizeMake(50, 50);
        button.frame = frame;
    }else{
        button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setImage:image forState:UIControlStateNormal];
        // imageのサイズに合わせてボタンを設定
        CGRect frame = button.frame;
        frame.size.width = image.size.width * 0.5;
        frame.size.height = image.size.height * 0.5;
        button.frame = frame;
    }
    
    // デリゲート press<FileName>:(id)senderがよびだされるようにする
    if (delegate) {
        NSString *string = [NSString stringWithFormat:@"press%@:",fileName];
        [button addTarget:delegate 
                   action:NSSelectorFromString(string) 
         forControlEvents:UIControlEventTouchUpInside];
    }
    return button;
}

+(UIButton *)buttonWithImageFileName:(NSString *)fileName withDelagete:(id)delegate{
    return [UIButton buttonWithImageFileName:fileName color:[UIColor whiteColor] withDelegate:delegate];
}

+ (UIButton*)buttonWithImageFileName:(NSString *)fileName{
    return [UIButton buttonWithImageFileName:fileName withDelagete:nil];
}

- (void)setColor:(UIColor *)color{
    UIImage *image = self.imageView.image;
    image = [UIImage colorImage:image withColor:color];
    [self setImage:image forState:UIControlStateNormal];
}

@end
