//
//  NSBundle+Extension.m
//  XDVideoEditor
//
//  Created by su xinde on 15/12/3.
//  Copyright © 2015年 com.su. All rights reserved.
//

#import "NSBundle+Extension.h"
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>

@implementation NSBundle (Extension)

+ (NSArray *)preferredScales
{
    static NSArray *scales;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        CGFloat screenScale = [UIScreen mainScreen].scale;
        if (screenScale <= 1) {
            scales = @[@1,@2,@3];
        } else if (screenScale <= 2) {
            scales = @[@2,@3,@1];
        } else {
            scales = @[@3,@2,@1];
        }
    });
    return scales;
}

@end
