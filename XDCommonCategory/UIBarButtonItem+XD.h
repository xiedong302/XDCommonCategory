//
//  UIBarButtonItem+XD.h
//  demo
//
//  Created by xiedong on 2017/3/29.
//  Copyright © 2017年 xiedong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (XD)

/**
 快速在导航栏  左边   创建一个带有文字的 UIBarButtonItem
 因为可以设置距离左边的Margin,所以需要使用 leftBarButtonItems
 
 @param title        文字
 @param size         对象的Size
 @param margin       距离左边导航的间距   负值越大越靠左 -15的时候正好贴在左边
 @param action       点击事件
 @param font         字体大小
 
 @return 返回一个 UIBarButtonItems 数组
 */
+ (NSArray *) setBarLeftButtonItemWithTitle:(NSString *)title
                                       size:(CGSize)size
                                     margin:(CGFloat)margin
                                     action:(SEL)action
                                     target:(id)target
                                      color:(UIColor *)color
                                       font:(CGFloat)font;

/**
  快速在导航栏  右边   创建一个带有文字的 UIBarButtonItem
  因为可以设置距离右边的Margin,所以需要使用 rightBarButtonItems
  
  @param title        文字
  @param size         对象的Size
  @param margin       距离右边导航的间距   负值越大越靠右 -15的时候正好贴在右边
  @param action       点击事件
  @param font         字体大小
  
  @return 返回一个 UIBarButtonItems数组
  */
+ (NSArray *) setBarRightButtonItemWithTitle:(NSString *)title
                                          size:(CGSize)size
                                        margin:(CGFloat)margin
                                        action:(SEL)action
                                        target:(id)target
                                         color:(UIColor *)color
                                          font:(CGFloat)font;


/**
 快速在导航栏  左边/右边  创建一个带有文字的 UIBarButtonItem
 因为可以设置距离左边的Margin,所以需要设置 BarButtonItems
 
 @param imageName    图片
 @param size         对象的Size
 @param margin       距离边界导航的间距   负值越大越靠边界 -15为标准
 @param action       点击事件
 
 @return 返回一个 UIBarButtonItems 数组
 */
+ (NSArray *) setBarButtonItemWithImageName:(NSString *)imageName
                                       size:(CGSize)size
                                     margin:(CGFloat)margin
                                     action:(SEL)action
                                     target:(id)target;

@end
