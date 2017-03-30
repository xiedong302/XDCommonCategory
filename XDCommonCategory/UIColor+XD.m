//
//  UIColor+XD.m
//  demo
//
//  Created by xiedong on 2017/3/29.
//  Copyright © 2017年 xiedong. All rights reserved.
//

#import "UIColor+XD.h"

@implementation UIColor (XD)

+ (UIColor *)colorWithHexValue:(NSInteger)hexValue {
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 green:((float)((hexValue & 0xFF00) >> 8))/255.0 blue:((float)(hexValue & 0xFF))/255.0 alpha:1];
}

+ (UIColor *)colorWithHexValue:(NSInteger)hexValue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 green:((float)((hexValue & 0xFF00) >> 8))/255.0 blue:((float)(hexValue & 0xFF))/255.0 alpha:alpha];
}
@end
