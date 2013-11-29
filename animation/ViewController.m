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
- (void)createFirstView;
- (void)createSecondView;
@end

@implementation ViewController

- (void)loadView
{
    [super loadView];
    UIView *view=[[UIView alloc]initWithFrame:[UIScreen mainScreen].applicationFrame];
    
    view.backgroundColor=[UIColor cyanColor];
    self.view = view;
    
    [self createFirstView];
    [self createSecondView];
}

- (void)createFirstView
{
    firstViewController *firstViewCtr = [[firstViewController alloc] init];
    firstViewCtr.delegate = self;
    [self.view addSubview: firstViewCtr.view];
    _firstCtr = firstViewCtr;
    
    _firstCtr.changeBlock = ^(float duration) {
        [UIView beginAnimations:nil context:nil];
        //持续时间
        [UIView setAnimationDuration:duration];
        //在出动画的时候减缓速度
        [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
        //添加动画开始及结束的代理
        [UIView setAnimationDelegate:self];
        [UIView setAnimationWillStartSelector:@selector(begin)];
        [UIView setAnimationDidStopSelector:@selector(stopAni)];
        //动画效果
        [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
        [self.view exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
        CGRect frame = [UIScreen mainScreen].applicationFrame;
        self.secondCtr.view.frame = CGRectMake(0, 20, frame.size.width, frame.size.height);
        self.firstCtr.view.frame = CGRectMake(frame.size.width, 20, frame.size.width, frame.size.height);
        [UIView commitAnimations];
    };
}

- (void)createSecondView
{
    secondViewController *secondCtr = [[secondViewController alloc] init];
    secondCtr.delegate = self;
    [self.view addSubview:secondCtr.view];
    _secondCtr = secondCtr;
    _secondCtr.changeBlock = ^(float duration) {
        [UIView beginAnimations:nil context:nil];
        //持续时间
        [UIView setAnimationDuration:duration];
        //在出动画的时候减缓速度
        [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
        //添加动画开始及结束的代理
        [UIView setAnimationDelegate:self];
        [UIView setAnimationWillStartSelector:@selector(begin)];
        [UIView setAnimationDidStopSelector:@selector(stopAni)];
        //动画效果
        //    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
        //    [self.view exchangeSubviewAtIndex:1 withSubviewAtIndex:0];
        CGRect frame = [UIScreen mainScreen].applicationFrame;
        self.firstCtr.view.frame = CGRectMake(0, 20, frame.size.width, frame.size.height);
        self.secondCtr.view.frame = CGRectMake(frame.size.width, 20, frame.size.width, frame.size.height);
        [UIView commitAnimations];
    };
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

    
    NSLog(@"go to first!");
    //    CGRect frame = [UIScreen mainScreen].applicationFrame;
    //    self.secondCtr.view.frame = CGRectMake(-100, 20, frame.size.width, frame.size.height);
}

- (void)redirectToFirst
{
    NSLog(@"go to first!");
//    CGRect frame = [UIScreen mainScreen].applicationFrame;
//    self.secondCtr.view.frame = CGRectMake(-100, 20, frame.size.width, frame.size.height);
}

@end
