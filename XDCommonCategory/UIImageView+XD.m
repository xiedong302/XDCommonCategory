//
//  UIImageView+XD.m
//  demo
//
//  Created by xiedong on 2017/4/26.
//  Copyright © 2017年 xiedong. All rights reserved.
//

#import "UIImageView+XD.h"

@implementation UIImageView (XD)
- (void)setImageViewWithCornerRadius:(NSInteger)cornerRadius {
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = cornerRadius;
}
-(void)setImageViewWithBorderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth {
    self.layer.borderColor = borderColor.CGColor;
    self.layer.borderWidth = borderWidth;
}
- (void)addImageViewTapGestureWithTarget:(id)target action:(SEL)action {
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:target action:action];
    [self addGestureRecognizer:tapGesture];
}
@end
