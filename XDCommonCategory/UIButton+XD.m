//
//  UIButton+XD.m
//  demo
//
//  Created by xiedong on 2017/3/29.
//  Copyright © 2017年 xiedong. All rights reserved.
//

#import "UIButton+XD.h"
#import "UIImage+XD.h"

@implementation UIButton (XD)

+ (UIButton *)setButtonWithTitleColor:(UIColor *)titleColor fontSize:(NSInteger)fontSize title:(NSString *)title textAligment:(NSTextAlignment)textAligment target:(id)target action:(SEL)action {
    UIButton *button = [[UIButton alloc] init];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateHighlighted];
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitle:title forState:UIControlStateHighlighted];
    button.titleLabel.textAlignment = textAligment;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}

+ (UIButton *)setButtonWithImageName:(NSString *)imageName target:(id)target action:(SEL)action {
    UIButton *button = [[UIButton alloc] init];
    [button setImage:[UIImage resizeImage:imageName] forState:UIControlStateNormal];
    [button setImage:[UIImage resizeImage:imageName] forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}

- (void)setButtonWithCornerRadius:(NSInteger)cornerRadius {
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = cornerRadius;
}

- (void)setButtonWithBorderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth {
    self.layer.borderColor = borderColor.CGColor;
    self.layer.borderWidth = borderWidth;
}
@end
