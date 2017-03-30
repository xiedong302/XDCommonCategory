//
//  NSString+Util.h
//  demo
//
//  Created by xiedong on 2017/3/29.
//  Copyright © 2017年 xiedong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Util)

/**
 判断字符串是否是空串
 **/
+ (BOOL)isEmpty:(NSString *)str;

/**
 返回过滤了空格换行的新字符串:(收尾的空格)
 **/
+ (NSString *)onlyString:(NSString *)str;

/**
 返回经过MD5的加密串
 **/
- (NSString *)md5String;

/**
 *  过滤html标签
 */
+ (NSString *)html2Text:(NSString *)html;

/**
 *  生成DBID
 */
+ (NSString *)createDbId;

/**
 * 获取文本绘制空间大小
 */
+(CGSize) contentSizeOfStr:(NSString *) str withFont:(UIFont*)font constrainedToSize:(CGSize) size;

/**
 * 获取UUID
 */

+ (NSString *)uuid;
@end
