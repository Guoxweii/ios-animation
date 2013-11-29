//
//  firstViewController.h
//  animation
//
//  Created by gxw on 13-11-28.
//  Copyright (c) 2013年 gxw. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^CodeBlock)(float);

@interface firstViewController : UIViewController
@property (retain, nonatomic) id delegate;
@property (retain, nonatomic) CodeBlock changeBlock;
@end
