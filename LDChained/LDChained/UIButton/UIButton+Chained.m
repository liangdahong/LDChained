//
//  UIButton+Chained.m
//  LDChained
//
//  Created by liangdahong on 16/7/5.
//  Copyright © 2016年 https://liangdahong.com All rights reserved.
//

#import "UIButton+Chained.h"

@implementation UIButton (Chained)

#pragma mark - 属性方法

kImplementView(UIButton, UIEdgeInsets, contentEdgeInsets);
kImplementView(UIButton, UIEdgeInsets, titleEdgeInsets);
kImplementView(UIButton, BOOL, reversesTitleShadowWhenHighlighted);
kImplementView(UIButton, UIEdgeInsets, imageEdgeInsets);
kImplementView(UIButton, BOOL, adjustsImageWhenHighlighted);
kImplementView(UIButton, BOOL, adjustsImageWhenDisabled);
kImplementView(UIButton, BOOL, showsTouchWhenHighlighted);
kImplementView(UIButton, NSLineBreakMode, lineBreakMode);
kImplementView(UIButton, CGSize, titleShadowOffset);
kImplementViewObject(UIButton, UIColor, tintColor);
kImplementViewObject(UIButton, UIFont, font);

#pragma mark - 其他配置方法

- (UIButton *(^)(NSString *, UIControlState))ld_title {
    return ^UIButton * (NSString *title, UIControlState state) {
        [self setTitle:title forState:state];
        return self;
    };
}

- (UIButton *(^)(UIColor *, UIControlState))ld_titleColor {
    return ^UIButton * (UIColor *titleColor, UIControlState state) {
        [self setTitleColor:titleColor forState:state];
        return self;
    };
}

- (UIButton *(^)(UIColor *, UIControlState))ld_titleShadowColor {
    return ^UIButton * (UIColor *titleShadowColor, UIControlState state) {
        [self setTitleShadowColor:titleShadowColor forState:state];
        return self;
    };
}

- (UIButton *(^)(UIImage *, UIControlState))ld_image {
    return ^UIButton * (UIImage *image, UIControlState state) {
        [self setImage:image forState:state];
        return self;
    };
}

- (UIButton *(^)(UIImage *, UIControlState))ld_backgroundImage {
    return ^UIButton * (UIImage *backgroundImage, UIControlState state) {
        [self setBackgroundImage:backgroundImage forState:state];
        return self;
    };
}

- (UIButton *(^)(NSAttributedString *, UIControlState))ld_attributedTitle {
    return ^UIButton * (NSAttributedString *attributedTitle, UIControlState state) {
        [self setAttributedTitle:attributedTitle forState:state];
        return self;
    };
}

@end
