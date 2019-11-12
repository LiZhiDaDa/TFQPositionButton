//
//  ViewController.m
//  TFQPositionButton
//
//  Created by 王立志 on 2019/11/12.
//  Copyright © 2019 Thread_Fight_Queue. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+TFQPosition.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createBtnWithY:100 andTitle:@"我是文字" andImagePositon:TFQImageLeft];
    [self createBtnWithY:200 andTitle:@"我是文字" andImagePositon:TFQImageRight];
    [self createBtnWithY:300 andTitle:@"我是文字" andImagePositon:TFQImageUp];
    [self createBtnWithY:400 andTitle:@"我是文字" andImagePositon:TFQImageDown];
    [self createBtnWithY:500 andTitle:@"我是文字" andImagePositon:4];
}

///根据title和y创建button
- (void)createBtnWithY:(CGFloat)Y andTitle:(NSString *)title andImagePositon:(TFQPosition)imagePosition{
    UIButton *btn =[[UIButton alloc] init];
    btn.backgroundColor = [UIColor lightGrayColor];
    [btn setImage:[UIImage imageNamed:@"icon"] forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, Y, 100, 60);
    if(imagePosition < 4){
        [btn tfq_setImagePosition:imagePosition andSpace:5];
    }
    btn.titleLabel.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:btn];
}


@end
