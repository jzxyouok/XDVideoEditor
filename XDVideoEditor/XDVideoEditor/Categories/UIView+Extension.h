//
//  UIView+Extension.h
//  XDVideoEditor
//
//  Created by su xinde on 15/12/1.
//  Copyright © 2015年 com.su. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)

@property (nonatomic) CGFloat frameX;
@property (nonatomic) CGFloat frameY;
@property (nonatomic) CGFloat frameWidth;
@property (nonatomic) CGFloat frameHeight;
@property (nonatomic) CGPoint frameOrigin;
@property (nonatomic) CGSize frameSize;

@property (nonatomic) CGFloat boundsX;
@property (nonatomic) CGFloat boundsY;
@property (nonatomic) CGFloat boundsWidth;
@property (nonatomic) CGFloat boundsHeight;

@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;

/**
 * Returns the UIImage representation of this view.
 */
- (UIImage *)toImage;

/**
 * Returns a UIImageView representation of this view.  The image view's initial frame
 * is set to the frame as the view.
 */
- (UIImageView *)toImageView;


@end
