//
//  AVPlayerItem+Extension.h
//  XDVideoEditor
//
//  Created by zj－db0367 on 15/11/30.
//  Copyright © 2015年 com.su. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>

@interface AVPlayerItem (Extension)

@property (strong, nonatomic) AVSynchronizedLayer *syncLayer;

- (BOOL)hasValidDuration;
- (void)muteAudioTracks:(BOOL)value;

@end
