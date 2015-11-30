//
//  NSString+Extension.m
//  XDVideoEditor
//
//  Created by zj－db0367 on 15/11/30.
//  Copyright © 2015年 com.su. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

- (NSString *)stringByMatchingRegex:(NSString *)regex
                            capture:(NSUInteger)capture
{
    NSRegularExpression *expression = [NSRegularExpression regularExpressionWithPattern:regex options:0 error:nil];
    NSTextCheckingResult *result = [expression firstMatchInString:self options:0 range:NSMakeRange(0, [self length])];
    if (capture < [result numberOfRanges]) {
        NSRange range = [result rangeAtIndex:capture];
        return [self substringWithRange:range];
    }
    return nil;
}

@end
