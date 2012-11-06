//
//  UIImage+PhotoHelper.h
//  CoreImageFilter
//
//  Created by Yasuo Kasajima on 12/07/09.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (PhotoHelper)
- (UIImage*)cropImageInRect:(CGRect)rect;
- (UIImage *)resizeImageToWidth:(float )width;
- (UIImage *)resizeImageToWidth:(float )width height:(float)height;
@end
