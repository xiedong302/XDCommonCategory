//
//  UIButton+XD.h
//  demo
//
//  Created by xiedong on 2017/3/29.
//  Copyright © 2017年 xiedong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (XD)

/**
 快速创建一个文字Button 不用传入frame
 @param titleColor    文字颜色
 @param fontSize      文字大小
 @param title         文字
 @param textAligment  文字对齐方式
 @param target        点击对象
 @param action        点击事件
 **/
+ (UIButton *)setButtonWithTitleColor:(UIColor *)titleColor
                             fontSize:(NSInteger)fontSize
                                title:(NSString *)title
                         textAligment:(NSTextAlignment)textAligment
                               target:(id)target
                               action:(SEL)action;

/**
 快速创建一个图片Button 不用传入frame
 @param imageName 图片名字
 @param target    点击对象
 @param action    点击事件
 **/
+ (UIButton *)setButtonWithImageName:(NSString *)imageName
                              target:(id)target
                              action:(SEL)action;

/**
 设置Button的圆角
 @param cornerRadius 需要绘制的圆角大小
 **/
- (void)setButtonWithCornerRadius:(NSInteger)cornerRadius;

/**
 设置Button的圆角边框
 @param borderColor 边框颜色
 @param borderWidth 边框宽度
 **/
- (void)setButtonWithBorderColor:(UIColor *)borderColor
                    borderWidth:(CGFloat)borderWidth;

@end
