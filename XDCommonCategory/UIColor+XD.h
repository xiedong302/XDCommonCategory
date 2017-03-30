//
//  UIColor+XD.h
//  demo
//
//  Created by xiedong on 2017/3/29.
//  Copyright © 2017年 xiedong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (XD)

/**
 16进制格式的颜色转化成类对象 默认的透明度为1 即不透明
 @param hexValue 十六进制数据
 **/
+ (UIColor *)colorWithHexValue:(NSInteger)hexValue;

/**
 16进制格式的颜色转化成类对象
 @param hexValue 十六进制数据
 @param alpha    透明度
 */
+ (UIColor *)colorWithHexValue:(NSInteger)hexValue
                         alpha:(CGFloat)alpha;
@end
