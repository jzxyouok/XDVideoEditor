//
//  AVPlayerItem+Extension.m
//  XDVideoEditor
//
//  Created by su xinde on 15/11/30.
//  Copyright © 2015年 com.su. All rights reserved.
//

#import "AVPlayerItem+Extension.h"
#import <objc/runtime.h>

static id THSynchronizedLayerKey;

@implementation AVPlayerItem (Extension)

- (BOOL)hasValidDuration {
    return self.status == AVPlayerItemStatusReadyToPlay && !CMTIME_IS_INVALID(self.duration);
}

- (AVSynchronizedLayer *)syncLayer {
    return objc_getAssociatedObject(self, &THSynchronizedLayerKey);
}

- (void)setSyncLayer:(AVSynchronizedLayer *)titleLayer {
    objc_setAssociatedObject(self, &THSynchronizedLayerKey, titleLayer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)muteAudioTracks:(BOOL)value {
    for (AVPlayerItemTrack *track in self.tracks) {
        if ([track.assetTrack.mediaType isEqualToString:AVMediaTypeAudio]) {
            track.enabled = !value;
        }
    }
}

@end
