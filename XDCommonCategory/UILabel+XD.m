//
//  UILabel+XD.m
//  demo
//
//  Created by xiedong on 2017/3/29.
//  Copyright © 2017年 xiedong. All rights reserved.
//

#import "UILabel+XD.h"
#import "UIView+XD.h"

@implementation UILabel (XD)

+ (UILabel *)setLabelWithTextColor:(UIColor *)textColor fontSize:(NSInteger)fontSize text:(NSString *)text textAligment:(NSTextAlignment)textAligment isBold:(BOOL)isBold {
    UILabel *label = [[UILabel alloc] init];
    label.textColor = textColor;
    label.text = text;
    label.textAlignment = textAligment;
    if (isBold) {
        label.font = [UIFont boldSystemFontOfSize:fontSize];
    } else {
        label.font = [UIFont systemFontOfSize:fontSize];
    }
    [label sizeToFit];
    return label;
}

- (void)setLabelLineText:(NSString *)text lineSpace:(NSInteger)lineSpace {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:text];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpace]; //设置行间距
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, text.length)];
    self.attributedText = attributedString;
    self.lineBreakMode = NSLineBreakByWordWrapping|NSLineBreakByTruncatingTail;
}

- (void)setLabelWithCornerRadius:(NSInteger)cornerRadius {
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = cornerRadius;
}

- (void)setLabelWithBorderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth {
    self.layer.borderColor = borderColor.CGColor;
    self.layer.borderWidth = borderWidth;
}

- (void)addLabelTapGestureWithTarget:(id)target action:(SEL)action {
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:target action:action];
    [self addGestureRecognizer:tapGesture];
}
@end
