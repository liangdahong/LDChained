//
//  UIView+Chained.m
//  LDChained
//
//  Created by Daredos on 16/7/4.
//  Copyright © 2016年 LiangDahong. All rights reserved.
//

#import "UIView+Chained.h"

@implementation UIView (Chained)

kImplementView(UIView, BOOL, userInteractionEnabled);
kImplementView(UIView, NSInteger, tag);
kImplementView(UIView, UISemanticContentAttribute, semanticContentAttribute);

kImplementView(UIView, CGRect, frame);
kImplementView(UIView, CGRect, bounds);
kImplementView(UIView, CGPoint, center);
kImplementView(UIView, CGAffineTransform, transform);

kImplementView(UIView, CGFloat, contentScaleFactor);
kImplementView(UIView, BOOL, multipleTouchEnabled);
kImplementView(UIView, BOOL, exclusiveTouch);
kImplementView(UIView, BOOL, autoresizesSubviews);
kImplementView(UIView, UIViewAutoresizing, autoresizingMask);

kImplementView(UIView, UIEdgeInsets, layoutMargins);
kImplementView(UIView, BOOL, preservesSuperviewLayoutMargins);

kImplementView(UIView, BOOL, clipsToBounds);
kImplementView(UIView, CGFloat, alpha);
kImplementView(UIView, BOOL, opaque);

kImplementView(UIView, BOOL, clearsContextBeforeDrawing);
kImplementView(UIView, BOOL, hidden);
kImplementView(UIView, UIViewContentMode, contentMode);
kImplementView(UIView, CGRect, contentStretch);

kImplementView(UIView, UIViewTintAdjustmentMode, tintAdjustmentMode);
kImplementView(UIView, BOOL, translatesAutoresizingMaskIntoConstraints);

kImplementViewObject(UIView, UIColor, backgroundColor);
kImplementViewObject(UIView, UIView, maskView);
kImplementViewObject(UIView, UIColor, tintColor);

- (UIView *(^)(CGFloat x))ld_x {
    return ^ UIView * (CGFloat x) {
        CGRect frame = self.frame;
        frame.origin.x = x;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat y))ld_y {
    return ^ UIView * (CGFloat y) {
        CGRect frame = self.frame;
        frame.origin.y = y;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat width))ld_width {
    return ^ UIView * (CGFloat width) {
        CGRect frame = self.frame;
        frame.size.width = width;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat height))ld_height {
    return ^ UIView * (CGFloat height) {
        CGRect frame = self.frame;
        frame.size.height = height;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGPoint origin))ld_origin {
    return ^ UIView * (CGPoint origin) {
        CGRect frame = self.frame;
        frame.origin = origin;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGSize size))ld_size {
    return ^ UIView * (CGSize size) {
        CGRect frame = self.frame;
        frame.size = size;
        self.frame = frame;
        return self;
    };
}

- (instancetype)_ {
    return self;
}

- (instancetype)with {
    return self;
}

- (instancetype)and  {
    return self;
}

- (instancetype)stop {
    return [[self class] new];
}

- (instancetype)end {
    return [[self class] new];
}

@end
