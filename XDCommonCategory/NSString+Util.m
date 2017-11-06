//
//  NSString+Util.m
//  demo
//
//  Created by xiedong on 2017/3/29.
//  Copyright © 2017年 xiedong. All rights reserved.
//

#import "NSString+Util.h"
#import <CommonCrypto/CommonDigest.h>
#import "RegexKitLite.h"

#define kOK_PhoneNumber  @"^[1]([3|4|5|7|8][0-9]{1})[0-9]{8}$"
#define kOK_Email        @"^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$"

@implementation NSString (Util)

+ (BOOL)isEmpty:(NSString *)str {
    if (str == nil) {
        return YES;
    }
    if ([str isKindOfClass:[NSNull class]]) {
        return YES;
    }
    NSString *tempStr = [NSString onlyString:str];
    if ([@"" isEqualToString:tempStr] || [@"null" isEqualToString:tempStr]) {
        return YES;
    }
    return NO;
}

+ (NSString *)onlyString:(NSString *)str {
    if (str == nil) {
        return nil;
    }
    return [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSString *)md5String {
    const char *cStr = [self UTF8String];
    unsigned char result[16];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result);
    return  [[NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
             result[0],result[1],result[2],result[3],
             result[4],result[5],result[6],result[7],
             result[8],result[9],result[10],result[11],
             result[12],result[13],result[14],result[15]] lowercaseString];
}

+ (NSString *)html2Text:(NSString *)html
{
    static NSString *regEx_script = @"<[\\s]*?script[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?script[\\s]*?>";
    static NSString *regEx_style = @"<[\\s]*?style[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?style[\\s]*?>";
    static NSString *regEx_html = @"<[^>]+>";
    static NSString *regEx_html1 = @"<[^>]+";
    
    NSMutableString *mutableHtml = [NSMutableString stringWithString:html];
    [mutableHtml replaceOccurrencesOfString:@"&lt;" withString:@"<" options:NSLiteralSearch range:NSMakeRange(0, [mutableHtml length])];
    [mutableHtml replaceOccurrencesOfString:@"&gt;" withString:@">" options:NSLiteralSearch range:NSMakeRange(0, [mutableHtml length])];
    [mutableHtml replaceOccurrencesOfString:@"&nbsp;" withString:@" " options:NSLiteralSearch range:NSMakeRange(0, [mutableHtml length])];
    [mutableHtml replaceOccurrencesOfString:@"|" withString:@"" options:NSLiteralSearch range:NSMakeRange(0, [mutableHtml length])];
    
    NSRegularExpression *m_script = [NSRegularExpression regularExpressionWithPattern:regEx_script options:NSRegularExpressionCaseInsensitive|NSRegularExpressionDotMatchesLineSeparators error:nil];
    NSRegularExpression *m_style = [NSRegularExpression regularExpressionWithPattern:regEx_style options:NSRegularExpressionCaseInsensitive|NSRegularExpressionDotMatchesLineSeparators error:nil];
    NSRegularExpression *m_html = [NSRegularExpression regularExpressionWithPattern:regEx_html options:NSRegularExpressionCaseInsensitive|NSRegularExpressionDotMatchesLineSeparators error:nil];
    NSRegularExpression *m_html1 = [NSRegularExpression regularExpressionWithPattern:regEx_html1 options:NSRegularExpressionCaseInsensitive|NSRegularExpressionDotMatchesLineSeparators error:nil];
    
    [m_script replaceMatchesInString:mutableHtml options:NSMatchingReportCompletion range:NSMakeRange(0, [mutableHtml length]) withTemplate:@""];
    [m_style replaceMatchesInString:mutableHtml options:NSMatchingReportCompletion range:NSMakeRange(0, [mutableHtml length]) withTemplate:@""];
    [m_html replaceMatchesInString:mutableHtml options:NSMatchingReportCompletion range:NSMakeRange(0, [mutableHtml length]) withTemplate:@""];
    [m_html1 replaceMatchesInString:mutableHtml options:NSMatchingReportCompletion range:NSMakeRange(0, [mutableHtml length]) withTemplate:@""];
    
    return mutableHtml;
}

//生成DBID
+ (NSString *)createDbId
{
    // Create universally unique identifier (object)
    NSMutableArray *zh= [NSMutableArray arrayWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z",@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",@"i",@"j",@"k",@"l",@"m",@"n",@"o",@"p",@"q",@"r",@"s",@"t",@"u",@"v",@"w",@"x",@"y",@"z",nil] ;
    //        CGLog(@"LENGTH=%d",[zh count]);
    int i=0;
    NSMutableString *s=[[NSMutableString alloc]init] ;
    while (i<32) {
        [s appendString:[zh objectAtIndex:arc4random()%62]];
        i++;
        //CGLog(@"%d",arc4random()%36);
    }
    // CGLog(@"id==%@",s);
    return s;
}

/**
 * 获取文本绘制空间大小
 */
+(CGSize) contentSizeOfStr:(NSString *) str withFont:(UIFont*)font constrainedToSize:(CGSize) size {
    CGSize contentSize = CGSizeMake(0, 0);
    if (!str || str.length == 0) {
        return contentSize;
    }
    // 获取该段attributedString的属性字典
    NSDictionary *attribute = @{NSFontAttributeName:font};
    // 计算文本的大小
    contentSize = [str boundingRectWithSize:size
                                    options:NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading attributes:attribute context:nil].size;
    return contentSize;
}

+ (NSString *)uuid
{
    CFUUIDRef puuid = CFUUIDCreate( nil );
    CFStringRef uuidString = CFUUIDCreateString( nil, puuid );
    NSString * result = (NSString *)CFBridgingRelease(CFStringCreateCopy( NULL, uuidString));
    CFRelease(puuid);
    CFRelease(uuidString);
    return result;
}

+ (BOOL)isOKPhoneNumber:(NSString *)phoneNumber {
    if ([phoneNumber isMatchedByRegex:kOK_PhoneNumber])
    {
        return YES;
    }
    return NO;
}

+ (BOOL)isOKEmail:(NSString *)email {
    if ([email isMatchedByRegex:kOK_Email])
    {
        return YES;
    }
    return NO;
}
+ (void)call:(NSString *)phoneNumber {
    if ([NSString isOKPhoneNumber:phoneNumber])
    {
        NSString *telUrl = [NSString stringWithFormat:@"telprompt:%@", phoneNumber];
        telUrl = [telUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        NSURL *url = [[NSURL alloc] initWithString:telUrl];
        [[UIApplication sharedApplication] openURL:url];
    }
}
+ (BOOL)isChinese:(NSString *)string {
    NSString *match = @"(^[\u4e00-\u9fa5]+$)";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF matches %@", match];
    return [predicate evaluateWithObject:string];
}
+ (BOOL)isCludeChinese:(NSString *)string {
    for (int i = 0; i < [string length]; i++) {
        int a = [string characterAtIndex:i];
        if (a > 0x4e00 && a < 0x9fff) {
            return YES;
        }
    }
    return NO;
}
@end
