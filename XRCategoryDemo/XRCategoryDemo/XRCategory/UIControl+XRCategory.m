//
//  UIControl+XRCategory.m
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import "UIControl+XRCategory.h"

@implementation UIControl (XRCategory)

- (UIControl *(^)(BOOL))enable {
    return ^(BOOL b){
        self.enabled = b;
        return self;
    };
}

- (UIControl *(^)(BOOL))select {
    return ^(BOOL b){
        self.selected = b;
        return self;
    };
}

- (UIControl *(^)(BOOL))highlight {
    return ^(BOOL b){
        self.highlighted = b;
        return self;
    };
}

- (UIControl *(^)(UIControlContentVerticalAlignment))verticalAlignment {
    return ^(UIControlContentVerticalAlignment alignment){
        self.contentVerticalAlignment = alignment;
        return self;
    };
}

- (UIControl *(^)(UIControlContentHorizontalAlignment))horizontalAlignment {
    return ^(UIControlContentHorizontalAlignment alignment){
        self.contentHorizontalAlignment = alignment;
        return self;
    };
}

- (UIControl *(^)(id, SEL, UIControlEvents))addTarget {
    return ^(id target, SEL action, UIControlEvents event){
        [self addTarget:target action:action forControlEvents:event];
        return self;
    };
}

- (UIControl *(^)(id, SEL, UIControlEvents))removeTarget {
    return ^(id target, SEL action, UIControlEvents event){
        [self removeTarget:target action:action forControlEvents:event];
        return self;
    };
}
@end
