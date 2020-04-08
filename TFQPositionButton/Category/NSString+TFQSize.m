//
//  NSString+TFQSize.m
//  TFQPositionButton
//
//  Created by 王立志 on 2019/11/14.
//  Copyright © 2019 Thread_Fight_Queue. All rights reserved.
//

#import "NSString+TFQSize.h"

@implementation NSString (TFQSize)

///计算单行文本的尺寸
- (CGSize)tfq_sizeWithFont:(UIFont *)font{
    NSDictionary *dict = @{NSFontAttributeName:font};
    CGSize textSize = [self sizeWithAttributes:dict];
    return textSize;
}

///计算多行文本的尺寸 CGSizeMake(width, MAXFLOAT)
- (CGSize)tfq_sizeWithFont:(UIFont *)font size:(CGSize)size{
    NSDictionary *dict = @{NSFontAttributeName:font};
    NSStringDrawingOptions option = NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin;
    CGRect textRect = [self boundingRectWithSize:size options:option attributes:dict context:nil];
    return textRect.size;
}

@end
