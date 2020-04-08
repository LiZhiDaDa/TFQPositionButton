//
//  NSString+TFQSize.h
//  TFQPositionButton
//
//  Created by 王立志 on 2019/11/14.
//  Copyright © 2019 Thread_Fight_Queue. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (TFQSize)

///计算单行文本的尺寸
- (CGSize)tfq_sizeWithFont:(UIFont *)font;

///计算多行文本的尺寸
- (CGSize)tfq_sizeWithFont:(UIFont *)font size:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
