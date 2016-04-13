//
//  UIScrollView+XRCategory.m
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import "UIScrollView+XRCategory.h"

@implementation UIScrollView (XRCategory)


+ (instancetype)create:(void (^)(UIScrollView *))block{
    UIScrollView *obj = [[UIScrollView alloc] init];
    if (block) block(obj);
    return obj;
}

- (UIScrollView *(^)(CGPoint))ContentOffset {
    return ^(CGPoint offset){
        self.contentOffset = offset;
        return self;
    };
}

- (UIScrollView *(^)(CGSize))ContentSize {
    return ^(CGSize size){
        self.contentSize = size;
        return self;
    };
}

- (UIScrollView *(^)(UIEdgeInsets))ContentInset {
    return ^(UIEdgeInsets edge){
        self.contentInset = edge;
        return self;
    };
}

- (UIScrollView *(^)(id<UIScrollViewDelegate>))Delegate {
    return ^(id<UIScrollViewDelegate> obj) {
        self.delegate = obj;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))bounce {
    return ^(BOOL b) {
        self.bounces = b;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))alwaysBounceV {
    return ^(BOOL b) {
        self.alwaysBounceVertical = b;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))alwaysBounceH {
    return ^(BOOL b) {
        self.alwaysBounceHorizontal = b;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))pagingEnable {
    return ^(BOOL b) {
        self.pagingEnabled = b;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))scrollEnable {
    return ^(BOOL b) {
        self.scrollEnabled = b;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))scrollToTop {
    return ^(BOOL b) {
        self.scrollsToTop = b;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))showHIndicator {
    return ^(BOOL b) {
        self.showsHorizontalScrollIndicator = b;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))showVIndicator {
    return ^(BOOL b) {
        self.showsVerticalScrollIndicator = b;
        return self;
    };
}

- (UIScrollView *(^)(UIEdgeInsets))scrollIndecatorInset {
    return ^(UIEdgeInsets inset) {
        self.scrollIndicatorInsets = inset;
        return self;
    };
}

- (UIScrollView *(^)(UIScrollViewIndicatorStyle))IndicatorStyle {
    return ^(UIScrollViewIndicatorStyle style) {
        self.indicatorStyle = style;
        return self;
    };
}

- (UIScrollView *(^)(CGFloat))deceleratRate {
    return ^(CGFloat rate) {
        self.decelerationRate = rate;
        return self;
    };
}

- (UIScrollView *(^)(CGFloat))ZoomScale {
    return ^(CGFloat scale) {
        self.zoomScale = scale;
        return self;
    };
}

- (UIScrollView *(^)(CGFloat))minZoomScale {
    return ^(CGFloat scale) {
        self.minimumZoomScale = scale;
        return self;
    };
}

- (UIScrollView *(^)(CGFloat))maxZoomScale {
    return ^(CGFloat scale) {
        self.maximumZoomScale = scale;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))bounceZoom {
    return ^(BOOL b) {
        self.bouncesZoom = b;
        return self;
    };
}


- (UIScrollView *(^)(CGPoint, BOOL))setContentOffsetAnimated {
    return ^(CGPoint offset, BOOL b) {
        [self setContentOffset:offset animated:b];
        return self;
    };
}

- (UIScrollView *(^)(CGRect, BOOL))scrollRectToVisibleAnimated {
    return ^(CGRect rect, BOOL b) {
        [self scrollRectToVisible:rect animated:b];
        return self;
    };
}

- (UIScrollView *(^)(CGFloat, BOOL))setZoomScaleAnimated {
    return ^(CGFloat scale, BOOL b) {
        [self setZoomScale:scale animated:b];
        return self;
    };
}

- (UIScrollView *(^)(CGRect, BOOL))zoomToRectAnimated {
    return ^(CGRect rect, BOOL b) {
        [self zoomToRect:rect animated:b];
        return self;
    };
}

@end
