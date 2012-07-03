//
//  ViewController.m
//  UIKitHelperSample
//
//  Created by Yasuo Kasajima on 12/07/03.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "UIKitHelper.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark LifeCycle
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self installButtonNamed:@"CameraBtn" inPosition:CGPointMake(100, 100)];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark PressBtn
- (void)pressCameraBtn:(id)sender{
    NSLog(@"CameraBtn");
}

@end
