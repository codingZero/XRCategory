//
//  UIButton+XRCategory.m
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import "UIButton+XRCategory.h"

@implementation UIButton (XRCategory)

+ (instancetype)create:(void (^)(UIButton *))block{
    UIButton *obj = [[UIButton alloc] init];
    if (block) block(obj);
    return obj;
}

- (UIButton *(^)(UIEdgeInsets))contentEdge {
    return ^(UIEdgeInsets edge){
        self.contentEdgeInsets = edge;
        return self;
    };
}

- (UIButton *(^)(CGFloat, CGFloat, CGFloat, CGFloat))contentEdgeEle {
    return ^(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right){
        self.contentEdgeInsets = UIEdgeInsetsMake(top, left, bottom, right);
        return self;
    };
}

- (UIButton *(^)(UIEdgeInsets))titleEdge {
    return ^(UIEdgeInsets edge){
        self.titleEdgeInsets = edge;
        return self;
    };
}

- (UIButton *(^)(CGFloat, CGFloat, CGFloat, CGFloat))titleEdgeEle {
    return ^(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right){
        self.titleEdgeInsets = UIEdgeInsetsMake(top, left, bottom, right);
        return self;
    };
}

- (UIButton *(^)(UIEdgeInsets))imageEdge {
    return ^(UIEdgeInsets edge){
        self.imageEdgeInsets = edge;
        return self;
    };
}

- (UIButton *(^)(CGFloat, CGFloat, CGFloat, CGFloat))imageEdgeEle {
    return ^(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right){
        self.imageEdgeInsets = UIEdgeInsetsMake(top, left, bottom, right);
        return self;
    };
}

- (UIButton *(^)(BOOL))adjustImgWhenHighlight {
    return ^(BOOL b) {
        self.adjustsImageWhenHighlighted = b;
        return self;
    };
}

- (UIButton *(^)(BOOL))adjustImgWhenDisable {
    return ^(BOOL b) {
        self.adjustsImageWhenDisabled = b;
        return self;
    };
}

- (UIButton *(^)(BOOL))showTouchWhenHighlight {
    return ^(BOOL b) {
        self.showsTouchWhenHighlighted = b;
        return self;
    };
}

- (UIButton *(^)(NSString *, UIControlState))setTitleForState {
    return ^(NSString *title, UIControlState state) {
        [self setTitle:title forState:state];
        return self;
    };
}

- (UIButton *(^)(NSAttributedString *, UIControlState))setAttrituteTitleForState {
    return ^(NSAttributedString *title, UIControlState state) {
        [self setAttributedTitle:title forState:state];
        return self;
    };
}

- (UIButton *(^)(UIColor *, UIControlState))setTitleColorForState {
    return ^(UIColor *color, UIControlState state) {
        [self setTitleColor:color forState:state];
        return self;
    };
}

- (UIButton *(^)(UIColor *, UIControlState))setShadowColorForState {
    return ^(UIColor *color, UIControlState state) {
        [self setTitleShadowColor:color forState:state];
        return self;
    };
}


- (UIButton *(^)(UIImage *, UIControlState))setImageForState {
    return ^(UIImage *image, UIControlState state) {
        [self setImage:image forState:state];
        return self;
    };
}

- (UIButton *(^)(UIImage *, UIControlState))setBgImageForState {
    return ^(UIImage *image, UIControlState state) {
        [self setBackgroundImage:image forState:state];
        return self;
    };
}

- (NSString *(^)(UIControlState))titleForState {
    return ^(UIControlState state){
        return [self titleForState:state];
    };
}

- (NSAttributedString *(^)(UIControlState))attributeTitleForState {
    return ^(UIControlState state){
        return [self attributedTitleForState:state];
    };
}

- (UIColor *(^)(UIControlState))titleColorForState {
    return ^(UIControlState state){
        return [self titleColorForState:state];
    };
}

- (UIColor *(^)(UIControlState))shadowColorForState {
    return ^(UIControlState state){
        return [self titleShadowColorForState:state];
    };
}

- (UIImage *(^)(UIControlState))imageForState {
    return ^(UIControlState state){
        return [self imageForState:state];
    };
}

- (UIImage *(^)(UIControlState))bgImageForState {
    return ^(UIControlState state){
        return [self backgroundImageForState:state];
    };
}


@end
