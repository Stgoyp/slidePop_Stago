//
//  SlidePopNavController.m
//  SlidePopNavigationController
//
//  Created by bitzsoft_mac on 15/10/22.
//  Copyright © 2015年 stago_yp. All rights reserved.
//

#import "SlidePopNavController.h"

@interface SlidePopNavController () <UIGestureRecognizerDelegate>

@end

@implementation SlidePopNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.interactivePopGestureRecognizer.enabled = NO;
    
    id target = self.interactivePopGestureRecognizer.delegate;
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:@selector(handleNavigationTransition:)];
    
    pan.delegate = self;
    
    [self.view addGestureRecognizer:pan];
    
    // 禁止系统自带的滑动手势
 //   self.interactivePopGestureRecognizer.enabled = NO;
    // Do any additional setup after loading the view.
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    if (self.childViewControllers.count == 1) {
        return NO;
    }
    
    return YES;
}


@end
