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
//    [self createBtnWithY:100 andTitle:@"我是文字" andImagePositon:TFQImageLeft];
//    [self createBtnWithY:200 andTitle:@"我是文字" andImagePositon:TFQImageRight];
//    [self createBtnWithY:300 andTitle:@"我是文字" andImagePositon:TFQImageUp];
//    [self createBtnWithY:400 andTitle:@"我是文字" andImagePositon:TFQImageDown];
//    [self createBtnWithY:500 andTitle:@"我是文字" andImagePositon:4];
    
    [self getTextSize];
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

///计算label的size
- (CGSize)getTextSize{
    NSString *text = @"大家好，我是测试文字";
    UIFont *font = [UIFont systemFontOfSize:14];
    NSDictionary *dict = @{NSFontAttributeName:font};
    //iOS7以后  缺点：无法设置宽度，默认一行 所以推荐下边的计算方式
    CGSize labelSize = [text sizeWithAttributes:dict];
    NSLog(@"%f %f",labelSize.width, labelSize.height);
    
    NSStringDrawingOptions option = NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin;
    //iOS7以后
    CGRect labelRect = [text boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:option attributes:dict context:nil];
    NSLog(@"%f %f %f %f",labelRect.origin.x, labelRect.origin.y, labelRect.size.width, labelRect.size.height);
    
    NSMutableAttributedString *mutString = [[NSMutableAttributedString alloc]initWithString:@"Hello World!Hello World!Hello World!Hello World!Hello World!"attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]}];
    [mutString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:20.0] range:NSMakeRange(0, 5)];
    [mutString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:28.0] range:NSMakeRange(mutString.length - 6, 5)];
    
    //5.计算富文本的size
    CGSize size = [mutString boundingRectWithSize:CGSizeMake(200, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin context:nil].size;
                   
    
    return CGSizeMake(0, 0);
}


@end
