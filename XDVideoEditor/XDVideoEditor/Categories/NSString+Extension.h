//
//  NSString+Extension.h
//  XDVideoEditor
//
//  Created by zj－db0367 on 15/11/30.
//  Copyright © 2015年 com.su. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)

- (NSString *)stringByMatchingRegex:(NSString *)regex
                            capture:(NSUInteger)capture;

@end
