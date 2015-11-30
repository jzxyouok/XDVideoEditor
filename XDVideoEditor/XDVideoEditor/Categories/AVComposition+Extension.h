//
//  AVComposition+Extension.h
//  XDVideoEditor
//
//  Created by zj－db0367 on 15/11/30.
//  Copyright © 2015年 com.su. All rights reserved.
//

@import AVFoundation;

@interface AVComposition (Extension)

- (BOOL)writeToFile:(NSString *)path
         atomically:(BOOL)flag;

- (BOOL)writeToURL:(NSURL *)url
        atomically:(BOOL)flag;

@end
