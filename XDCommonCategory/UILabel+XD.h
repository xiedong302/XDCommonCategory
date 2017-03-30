//
//  UILabel+XD.h
//  demo
//
//  Created by xiedong on 2017/3/29.
//  Copyright © 2017年 xiedong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (XD)

/**
 快速创建一个Label 不用传入frame
 @param textColor    文字颜色
 @param fontSize     字体大小
 @param text         初始化文字
 @param textAligment 对齐方式
 @param isBold       是否加粗    NO:不加粗    YES：加粗
 **/
+ (UILabel *)setLabelWithTextColor:(UIColor *)textColor
                          fontSize:(NSInteger)fontSize
                              text:(NSString *)text
                      textAligment:(NSTextAlignment)textAligment
                            isBold:(BOOL)isBold;

/**
 设置Label的富文本属性 可以设置Lanel的行间距、字体等
 @param text      文本内容
 @param lineSpace 行间距
 **/
- (void)setLabelLineText:(NSString *)text
               lineSpace:(NSInteger)lineSpace;

/**
 设置Label的圆角
 @param cornerRadius 需要绘制的圆角大小
 **/
- (void)setLabelWithCornerRadius:(NSInteger)cornerRadius;

/**
 设置Label的圆角边框
 @param borderColor 边框颜色
 @param borderWidth 边框宽度
 **/
- (void)setLabelWithBorderColor:(UIColor *)borderColor
                    borderWidth:(CGFloat)borderWidth;

/**
 给Label添加点击手势
 @param target 点击对象
 @param action 点击事件
 **/
- (void)addLabelTapGestureWithTarget:(id)target
                              action:(SEL)action;
@end
