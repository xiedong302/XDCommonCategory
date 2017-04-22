//
//  UIView+XD.m
//  demo
//
//  Created by xiedong on 2017/3/29.
//  Copyright © 2017年 xiedong. All rights reserved.
//

#import "UIView+XD.h"

@implementation UIView (XD)

- (void)setXd_x:(CGFloat)xd_x {
    CGRect frame = self.frame;
    frame.origin.x = xd_x;
    self.frame = frame;
}
- (CGFloat)xd_x {
    return self.frame.origin.x;
}

- (void)setXd_y:(CGFloat)xd_y {
    CGRect frame = self.frame;
    frame.origin.y = xd_y;
    self.frame = frame;
}
- (CGFloat)xd_y {
    return self.frame.origin.y;
}

- (void)setXd_w:(CGFloat)xd_w {
    CGRect frame = self.frame;
    frame.size.width = xd_w;
    self.frame = frame;
}
- (CGFloat)xd_w {
    return self.frame.size.width;
}

- (void)setXd_h:(CGFloat)xd_h {
    CGRect frame = self.frame;
    frame.size.height = xd_h;
    self.frame = frame;
}
- (CGFloat)xd_h {
    return self.frame.size.height;
}

- (void)setXd_origin:(CGPoint)xd_origin {
    CGRect frame = self.frame;
    frame.origin = xd_origin;
    self.frame = frame;
}
- (CGPoint)xd_origin {
    return self.frame.origin;
}

- (void)setXd_size:(CGSize)xd_size {
    CGRect frame = self.frame;
    frame.size = xd_size;
    self.frame = frame;
}
- (CGSize)xd_size {
    return self.frame.size;
}

- (void)setXd_centerX:(CGFloat)xd_centerX {
    CGPoint point = self.center;
    point.x = xd_centerX;
    self.center = point;
}
- (CGFloat)xd_centerX {
    return self.center.x;
}

- (void)setXd_centerY:(CGFloat)xd_centerY {
    CGPoint point = self.center;
    point.y = xd_centerY;
    self.center = point;
}
- (CGFloat)xd_centerY {
    return self.center.y;
}


- (void)addViewTapGestureWithTarget:(id)target action:(SEL)action {
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:target action:action];
    [self addGestureRecognizer:tapGesture];
}
@end
