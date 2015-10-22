//
//  FirstViewController.m
//  SlidePopNavigationController
//
//  Created by bitzsoft_mac on 15/10/22.
//  Copyright © 2015年 stago_yp. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"First";
    // Do any additional setup after loading the view from its nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.navigationController pushViewController:[[SecondViewController alloc] init] animated:YES];
}

@end
