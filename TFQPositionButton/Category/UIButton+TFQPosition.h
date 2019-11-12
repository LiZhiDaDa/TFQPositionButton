//
//  UIButton+TFQPosition.h
//  TFQButton
//
//  Created by 王立志 on 2019/11/6.
//  Copyright © 2019 Thread_Fight_Queue. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, TFQPosition){
    ///图片在左，文字在右
    TFQImageLeft = 0,
    ///图片在右，文字在左
    TFQImageRight = 1,
    ///图片在上，文字在下
    TFQImageUp = 2,
    ///图片在下，文字在上
    TFQImageDown = 3
};

@interface UIButton (TFQPosition)

///设置图片位置以及图片与label的间隔
- (void)tfq_setImagePosition:(TFQPosition)imagePosition andSpace:(CGFloat)space;

@end

NS_ASSUME_NONNULL_END
