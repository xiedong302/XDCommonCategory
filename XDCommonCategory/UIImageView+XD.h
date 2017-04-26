//
//  UIImageView+XD.h
//  demo
//
//  Created by xiedong on 2017/4/26.
//  Copyright © 2017年 xiedong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (XD)

/**
 设置ImageView的圆角
 @param cornerRadius 需要绘制的圆角大小
 **/
- (void)setImageViewWithCornerRadius:(NSInteger)cornerRadius;

/**
 设置ImageView的圆角边框
 @param borderColor 边框颜色
 @param borderWidth 边框宽度
 **/
- (void)setImageViewWithBorderColor:(UIColor *)borderColor
                        borderWidth:(CGFloat)borderWidth;

/**
 给ImageView添加点击手势
 @param target 点击对象
 @param action 点击事件
 **/
- (void)addImageViewTapGestureWithTarget:(id)target
                                  action:(SEL)action;

@end
