//
//  secondViewController.m
//  animation
//
//  Created by gxw on 13-11-28.
//  Copyright (c) 2013年 gxw. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (void)loadView
{
    [super loadView];
    self.view = [[UIView alloc]initWithFrame:[UIScreen mainScreen].applicationFrame];
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    //给定button在view上的位置
    
    button.frame = CGRectMake(80, 180, 175, 40);
    button.backgroundColor = [UIColor yellowColor];
    [button setTitle:@"goto" forState:UIControlStateNormal];
    
    [button addTarget:_delegate action:@selector(redirectToFirst) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:button];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)redirectToFirst
{
    NSLog(@"testing delegate! the second view!");
}

@end
