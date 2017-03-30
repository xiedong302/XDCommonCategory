//
//  UIImage+XD.h
//  demo
//
//  Created by xiedong on 2017/3/29.
//  Copyright © 2017年 xiedong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (XD)

/**
 快速返回拉伸好的图片（中心点填充、不会变形）
 @param imageName 图片名字
 **/
+ (UIImage *)resizeImage:(NSString *)imageName;

/**
 快速返回UIColor设置图片
 @param color 颜色
 **/
+ (UIImage *)imageWithColor:(UIColor *)color;

/**
 设置圆角图片（比setLayer效率高）
 在设置完图片frame之后调用，否则可能无效
 **/
- (UIImage *)setCornerRadiusImage;

/**
 返回gifimage
 @param theData 本地图片资源
 */
+ (UIImage *)animatedImageWithAnimatedGIFData:(NSData *)theData;

/**
 返回gifimage
 @param theURL 网络图片资源
 */
+ (UIImage *)animatedImageWithAnimatedGIFURL:(NSURL *)theURL;

@end
