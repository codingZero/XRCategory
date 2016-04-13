//
//  UILabel+XRCategory.m
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import "UILabel+XRCategory.h"

@implementation UILabel (XRCategory)

+ (instancetype)create:(void (^)(UILabel *))block{
    UILabel *obj = [[UILabel alloc] init];
    if (block) block(obj);
    return obj;
}

- (UILabel *(^)(NSString *))Text {
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UILabel *(^)(NSAttributedString *))attributeText {
    return ^(NSAttributedString *attributedText){
        self.attributedText = attributedText;
        return self;
    };
}

- (UILabel *(^)(NSTextAlignment))TextAlignment {
    return ^(NSTextAlignment alignment){
        self.textAlignment = alignment;
        return self;
    };
}

- (UILabel *(^)(UIColor *))TextColor {
    return ^(UIColor *color){
        self.textColor = color;
        return self;
    };
}

- (UILabel *(^)(CGFloat, CGFloat, CGFloat, CGFloat))textColorRGB {
    return ^(CGFloat r, CGFloat g, CGFloat b, CGFloat a){
        self.textColor = [UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:g / 255.0 alpha:a];
        return self;
    };
}

- (UILabel *(^)(UIColor *))highlightTextColor {
    return ^(UIColor *color){
        self.highlightedTextColor = color;
        return self;
    };
}

- (UILabel *(^)(BOOL))highlight {
    return ^(BOOL b){
        self.highlighted = b;
        return self;
    };
}

- (UILabel *(^)(BOOL))enable {
    return ^(BOOL b){
        self.enabled = b;
        return self;
    };
}

- (UILabel *(^)(UIFont *))Font {
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}

- (UILabel *(^)(NSInteger))fontSize {
    return ^(NSInteger size){
        self.font = [UIFont systemFontOfSize:size];
        return self;
    };
}

- (UILabel *(^)(UIColor *))ShadowColor {
    return ^(UIColor *color){
        self.shadowColor = color;
        return self;
    };
}

- (UILabel *(^)(CGSize))ShadowOffset {
    return ^(CGSize size){
        self.shadowOffset = size;
        return self;
    };
}

- (UILabel *(^)(NSLineBreakMode))LineBreakMode {
    return ^(NSLineBreakMode mode){
        self.lineBreakMode = mode;
        return self;
    };
}

- (UILabel *(^)(NSInteger))numberOfLine {
    return ^(NSInteger num){
        self.numberOfLines = num;
        return self;
    };
}

- (UILabel *(^)(BOOL))adjustFontToFit {
    return ^(BOOL b){
        self.adjustsFontSizeToFitWidth = b;
        return self;
    };
}

- (UILabel *(^)(UIBaselineAdjustment))baselineAdjust {
    return ^(UIBaselineAdjustment adjustment){
        self.baselineAdjustment = adjustment;
        return self;
    };
}

- (UILabel *(^)(CGRect))drawText{
    return ^(CGRect rect){
        [self drawTextInRect:rect];
        return self;
    };
}

@end
