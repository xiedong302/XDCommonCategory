//
//  UIBarButtonItem+XD.m
//  demo
//
//  Created by xiedong on 2017/3/29.
//  Copyright © 2017年 xiedong. All rights reserved.
//

#import "UIBarButtonItem+XD.h"
#import "UIView+XD.h"
#import "UIImage+XD.h"

@implementation UIBarButtonItem (XD)

+ (NSArray *)setBarLeftButtonItemWithTitle:(NSString *)title size:(CGSize)size margin:(CGFloat)margin action:(SEL)action target:(id)target color:(UIColor *)color font:(CGFloat)font {
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    button.xd_size = size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button setTitleColor:color forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    UIBarButtonItem *leftBarButton = [[UIBarButtonItem alloc] initWithCustomView:button];
    UIBarButtonItem *navigationSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    navigationSpace.width = margin;  //占位
    return @[navigationSpace,leftBarButton];
}

+ (NSArray *)setBarRightButtonItemWithTitle:(NSString *)title size:(CGSize)size margin:(CGFloat)margin action:(SEL)action target:(id)target color:(UIColor *)color font:(CGFloat)font {
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    button.xd_size = size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button setTitleColor:color forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc] initWithCustomView:button];
    UIBarButtonItem *navigationSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    navigationSpace.width = margin;  //占位
    return @[navigationSpace,rightBarButton];
}

+ (NSArray *)setBarButtonItemWithImageName:(NSString *)imageName size:(CGSize)size margin:(CGFloat)margin action:(SEL)action target:(id)target {
    UIButton *button = [[UIButton alloc] init];
    [button setImage:[UIImage resizeImage:imageName] forState:UIControlStateNormal];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    button.xd_size = size;
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:button];
    UIBarButtonItem *navigationSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    navigationSpace.width = margin;
    return @[navigationSpace,item];
}

@end
