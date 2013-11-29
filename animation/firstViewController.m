//
//  firstViewController.m
//  animation
//
//  Created by gxw on 13-11-28.
//  Copyright (c) 2013年 gxw. All rights reserved.
//

#import "firstViewController.h"

@interface firstViewController ()

@end

@implementation firstViewController

- (void)loadView
{
    [super loadView];
    self.view = [[UIView alloc]initWithFrame:[UIScreen mainScreen].applicationFrame];
    self.view.backgroundColor = [UIColor redColor];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    //给定button在view上的位置
    
    button.frame = CGRectMake(80, 180, 175, 40);
    button.backgroundColor = [UIColor yellowColor];
    [button setTitle:@"change" forState:UIControlStateNormal];
    NSLog(@"%@", _delegate);
    
    [button addTarget:self action:@selector(redirectToSecond) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:button];
}

- (void)redirectToSecond
{
    NSLog(@"just for test!");
    self.changeBlock(0.4f);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
