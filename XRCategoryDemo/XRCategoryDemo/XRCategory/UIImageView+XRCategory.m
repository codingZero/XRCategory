//
//  UIImageView+XRCategory.m

//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import "UIImageView+XRCategory.h"

@implementation UIImageView (XRCategory)

+ (instancetype)create:(void (^)(UIImageView *))block{
    UIImageView *obj = [[UIImageView alloc] init];
    if (block) block(obj);
    return obj;
}

- (UIImageView *(^)(UIImage *))Image {
    return ^(UIImage *image){
        self.image = image;
        return self;
    };
}

- (UIImageView *(^)(UIImage *))highlightImg {
    return ^(UIImage *image){
        self.highlightedImage = image;
        return self;
    };
}

- (UIImageView *(^)(BOOL))highlight {
    return ^(BOOL b){
        self.highlighted = b;
        return self;
    };
}

- (UIImageView *(^)(NSArray *))animationImgs {
    return ^(NSArray *images){
        self.animationImages = images;
        return self;
    };
}

- (UIImageView *(^)(NSArray *))highlightAnimaImgs {
    return ^(NSArray *images){
        self.highlightedAnimationImages = images;
        return self;
    };
}

- (UIImageView *(^)(NSTimeInterval))animaDuration {
    return ^(NSTimeInterval time){
        self.animationDuration = time;
        return self;
    };
}

- (UIImageView *(^)(NSInteger))animaRepeatCount {
    return ^(NSInteger count){
        self.animationRepeatCount = count;
        return self;
    };
}

@end
