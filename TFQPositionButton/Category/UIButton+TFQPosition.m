//
//  UIButton+TFQPosition.m
//  TFQButton
//
//  Created by 王立志 on 2019/11/6.
//  Copyright © 2019 Thread_Fight_Queue. All rights reserved.
//

#import "UIButton+TFQPosition.h"

@implementation UIButton (TFQPosition)

///设置图片位置以及图片与label的间隔
- (void)tfq_setImagePosition:(TFQPosition)imagePosition andSpace:(CGFloat)space{
    CGFloat iw = self.imageView.image.size.width;
    CGFloat ih = self.imageView.image.size.height;
    CGFloat lw = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:self.titleLabel.font}].width;
    CGFloat lh = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:self.titleLabel.font}].height;
    //默认状态下：image中心点距离button中心点的横向距离
    CGFloat ix = (lw+iw)/2.0-iw/2.0;
    //默认状态下：image中心点距离button中心点的纵向距离
    CGFloat iy = (ih+lh)/2.0 - ih/2.0;
    //默认状态下：label中心点距离button中心点的横向距离
    CGFloat lx = (lw+iw)/2.0-lw/2.0;
    //默认状态下：label中心点距离button中心点的纵向距离
    CGFloat ly = (ih+lh)/2.0 - lh/2.0;
    switch (imagePosition) {
        case TFQImageLeft:
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -space/2.0, 0, space/2.0);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, space/2.0, 0, -space/2.0);
            break;
        case TFQImageRight:
            self.imageEdgeInsets = UIEdgeInsetsMake(0, lw+space/2.0, 0, -(lw+space/2.0));
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(iw+space/2.0), 0, iw+space/2.0);
            break;
        case TFQImageUp:
            self.imageEdgeInsets = UIEdgeInsetsMake(-iy-space/2.0, ix, iy+space/2.0, -ix);
            self.titleEdgeInsets = UIEdgeInsetsMake(ly+space/2.0, -lx, -ly-space/2.0, lx);
            break;
        case TFQImageDown:{
            self.imageEdgeInsets = UIEdgeInsetsMake(iy+space/2.0, ix, -iy-space/2.0, -ix);
            self.titleEdgeInsets = UIEdgeInsetsMake(-ly-space/2.0, -lx, ly+space/2.0, lx);
            break;
        default:
            break;
        }
    }
}
    
@end
