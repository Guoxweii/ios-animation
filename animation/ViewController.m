//
//  ViewController.m
//  animation
//
//  Created by gxw on 13-11-28.
//  Copyright (c) 2013年 gxw. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (retain,nonatomic) firstViewController *firstCtr;
@property (retain,nonatomic) secondViewController *secondCtr;
@end

@implementation ViewController

- (void)loadView
{
    [super loadView];
    UIView *view=[[UIView alloc]initWithFrame:[UIScreen mainScreen].applicationFrame];
    
    view.backgroundColor=[UIColor cyanColor];
    self.view = view;
    
    firstViewController *firstViewCtr = [[firstViewController alloc] init];
    firstViewCtr.delegate = self;
    [self.view addSubview: firstViewCtr.view];
    _firstCtr = firstViewCtr;
    
    secondViewController *secondCtr = [[secondViewController alloc] init];
    secondCtr.delegate = self;
    [self.view addSubview:secondCtr.view];
    [secondCtr.view setHidden:YES];
    _secondCtr = secondCtr;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)redirectToSecond
{
    NSLog(@"go to second");

    [self.firstCtr.view setHidden:YES];
    [self.secondCtr.view setHidden:NO];
}

- (void)redirectToFirst
{
    NSLog(@"go to first!");
    [self.firstCtr.view setHidden:NO];
    [self.secondCtr.view setHidden:YES];
}

@end
