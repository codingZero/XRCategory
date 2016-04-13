//
//  UIView+XRCategory.m
//
//  Created by 肖睿 on 16/4/12.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import "UIView+XRCategory.h"

@implementation UIView (XRCategory)

+ (instancetype)create:(void (^)(UIView *))block{
    UIView *obj = [[UIView alloc] init];
    if (block) block(obj);
    return obj;
}


- (CGFloat)X {
    return self.frame.origin.x;
}

- (CGFloat)Y {
    return self.frame.origin.y;
}

- (CGFloat)Width {
    return self.frame.size.width;
}

- (CGFloat)Height {
    return self.frame.size.height;
}

- (CGFloat)CenterX {
    return self.center.x;
}

- (CGFloat)CenterY {
    return self.center.y;
}


- (UIView *(^)(CGRect))Frame {
    return ^(CGRect frame) {
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat, CGFloat, CGFloat, CGFloat))frameEle {
    return ^(CGFloat x, CGFloat y, CGFloat width, CGFloat height){
        self.frame = CGRectMake(x, y, width, height);
        return self;
    };
}

- (UIView *(^)(CGFloat))x {
    return ^(CGFloat x) {
        CGRect frame = self.frame;
        frame.origin.x = x;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat))y {
    return ^(CGFloat y) {
        CGRect frame = self.frame;
        frame.origin.y = y;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat))width {
    return ^(CGFloat width) {
        CGRect frame = self.frame;
        frame.size.width = width;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat))height {
    return ^(CGFloat height) {
        CGRect frame = self.frame;
        frame.size.height = height;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGRect bounds))Bounds {
    return ^(CGRect bounds) {
        self.bounds = bounds;
        return self;
    };
}
- (UIView *(^)(CGFloat x, CGFloat y, CGFloat width, CGFloat height))boundsEle {
    return ^(CGFloat x, CGFloat y, CGFloat width, CGFloat height){
        self.bounds = CGRectMake(x, y, width, height);
        return self;
    };
}

- (UIView *(^)(CGPoint center))Center {
    return ^(CGPoint center){
        self.center = center;
        return self;
    };
}

- (UIView *(^)(CGFloat x, CGFloat y))centerEle {
    return ^(CGFloat x, CGFloat y){
        self.center = CGPointMake(x, y);
        return self;
    };
}

- (UIView *(^)(CGFloat))centerX {
    return ^(CGFloat centerX) {
        CGPoint center = self.center;
        center.x = centerX;
        self.center = center;
        return self;
    };
}

- (UIView *(^)(CGFloat))centerY {
    return ^(CGFloat centerY) {
        CGPoint center = self.center;
        center.y = centerY;
        self.center = center;
        return self;
    };
}

- (UIView *(^)(CGSize size))size {
    return ^(CGSize size){
        CGRect frame = self.frame;
        frame.size = size;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat width, CGFloat height))sizeEle {
    return ^(CGFloat width, CGFloat height){
        CGRect frame = self.frame;
        frame.size = CGSizeMake(width, height);
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGPoint origin))origin {
    return ^(CGPoint origin){
        CGRect frame = self.frame;
        frame.origin = origin;
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGFloat x, CGFloat y))originEle {
    return ^(CGFloat x, CGFloat y){
        CGRect frame = self.frame;
        frame.origin = CGPointMake(x, y);
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(UIColor *))bgColor {
    return ^(UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
}

- (UIView *(^)(CGFloat, CGFloat, CGFloat, CGFloat))bgColorRGB {
    return ^(CGFloat red, CGFloat green, CGFloat blue, CGFloat alpha){
        self.backgroundColor = [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:alpha];
        return self;
    };
}

- (UIView *(^)(CGFloat))Alpha {
    return ^(CGFloat alpha) {
        self.alpha = alpha;
        return self;
    };
}

- (UIView *(^)(CGFloat))Opaque {
    return ^(CGFloat opaque) {
        self.opaque = opaque;
        return self;
    };
}

- (UIView *(^)(CGFloat))cornerRadius {
    return ^(CGFloat radius) {
        self.layer.cornerRadius = radius;
        return self;
    };
}

- (UIView *(^)(BOOL))maskToBounds {
    return ^(BOOL b) {
        self.layer.masksToBounds = b;
        return self;
    };
}

- (UIView *(^)(BOOL))clipToBounds {
    return ^(BOOL b) {
        self.clipsToBounds = b;
        return self;
    };
}

- (UIView *(^)(BOOL))userInteractionEnable {
    return ^(BOOL b) {
        self.userInteractionEnabled = b;
        return self;
    };
}

- (UIView *(^)(BOOL))hide{
    return ^(BOOL b) {
        self.hidden = b;
        return self;
    };
}

- (UIView *(^)(NSInteger))Tag {
    return ^(NSInteger tag){
        self.tag = tag;
        return self;
    };
}


- (UIView *(^)(UIViewContentMode))ContentMode {
    return ^(UIViewContentMode mode){
        self.contentMode = mode;
        return self;
    };
}

- (UIView *(^)(BOOL))multipleTouch {
    return ^(BOOL b) {
        self.multipleTouchEnabled = b;
        return self;
    };
}

- (UIView *(^)(BOOL))autoresizeSubViews {
    return ^(BOOL b) {
        self.autoresizesSubviews = b;
        return self;
    };
}

- (UIView *(^)(BOOL))autoresizeMask {
    return ^(BOOL b) {
        self.autoresizingMask = b;
        return self;
    };
}


- (UIView *(^)(BOOL))endEdit {
    return ^(BOOL b){
        [self endEditing:b];
        return self;
    };
}


- (UIView *(^)())removeFromSuperView {
    return ^(){
        [self removeFromSuperview];
        return self;
    };
}

- (UIView *(^)(UIView *, NSInteger))insertSubviewAtIndex {
    return ^(UIView *view, NSInteger index) {
        [self insertSubview:view atIndex:index];
        return self;
    };
}

- (UIView *(^)(UIView *, UIView *))insertSubviewBelowView {
    return ^(UIView *view1, UIView *view2) {
        [self insertSubview:view1 belowSubview:view2];
        return self;
    };
}

- (UIView *(^)(UIView *, UIView *))insertSubviewAboveView {
    return ^(UIView *view1, UIView *view2) {
        [self insertSubview:view1 aboveSubview:view2];
        return self;
    };
}

- (UIView *(^)(NSInteger , NSInteger))exchangeSubviewAtIndexWithIndex {
    return ^(NSInteger index1, NSInteger index2) {
        [self exchangeSubviewAtIndex:index1 withSubviewAtIndex:index2];
        return self;
    };
}

- (UIView *(^)(UIView *))addSubview {
    return ^(UIView *view) {
        [self addSubview:view];
        return self;
    };
}

- (UIView *(^)(UIView *))bringSubviewToFront {
    return ^(UIView *view) {
        [self bringSubviewToFront:view];
        return self;
    };
}

- (UIView *(^)(UIView *))sendSubviewToBack {
    return ^(UIView *view) {
        [self sendSubviewToBack:view];
        return self;
    };
}

- (UIView *(^)(UIGestureRecognizer *))addGesture {
    return ^(UIGestureRecognizer *gesture){
        [self addGestureRecognizer:gesture];
        return self;
    };
}

- (UIView *(^)(UIGestureRecognizer *))removeGesture {
    return ^(UIGestureRecognizer *gesture){
        [self removeGestureRecognizer:gesture];
        return self;
    };
}
@end












