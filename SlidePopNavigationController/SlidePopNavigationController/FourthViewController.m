//
//  FourthViewController.m
//  SlidePopNavigationController
//
//  Created by bitzsoft_mac on 15/10/22.
//  Copyright © 2015年 stago_yp. All rights reserved.
//

#import "FourthViewController.h"

#import "FifthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Fourth";
    self.view.backgroundColor = [UIColor brownColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    [btn addTarget:self action:@selector(btnDown) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view from its nib.
}

- (void)btnDown
{
    [self.navigationController pushViewController:[[FifthViewController alloc] init] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
