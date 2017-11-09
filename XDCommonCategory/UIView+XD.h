//
//  UIView+XD.h
//  demo
//
//  Created by xiedong on 2017/3/29.
//  Copyright © 2017年 xiedong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (XD)

@property (nonatomic, assign) CGFloat xd_x;
@property (nonatomic, assign) CGFloat xd_y;
@property (nonatomic, assign) CGFloat xd_w;
@property (nonatomic, assign) CGFloat xd_h;
@property (nonatomic, assign) CGSize xd_size;
@property (nonatomic, assign) CGPoint xd_origin;
@property (nonatomic, assign) CGFloat xd_centerX;
@property (nonatomic, assign) CGFloat xd_centerY;

/**
 设置View的圆角
 @param cornerRadius 需要绘制的圆角大小
 **/
- (void)setViewWithCornerRadius:(NSInteger)cornerRadius;

/**
 设置View的圆角边框
 @param borderColor 边框颜色
 @param borderWidth 边框宽度
 **/
- (void)setViewWithBorderColor:(UIColor *)borderColor
                    borderWidth:(CGFloat)borderWidth;
/**
 给View添加点击手势
 @param target 点击对象
 @param action 点击事件
 **/
- (void)addViewTapGestureWithTarget:(id)target
                              action:(SEL)action;


/**
 利用CAShapeLayer 和 UIBezierPath设置圆角
 避免离屏渲染内存占用过大
 先有frame之后在设置
 **/
- (void)setViewRadiusUseBezierPathAndCAShapeLayer;


/**
 利用CAShapeLayer 和 UIBezierPath设置圆角
 避免离屏渲染内存占用过大
 @param radius 直径
 **/
- (void)setViewRadiusUseBezierPathAndCAShapeLayerWithRadius:(CGFloat)radius;

@end
