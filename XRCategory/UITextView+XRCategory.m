//
//  UITextView+XRCategory.m
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import "UITextView+XRCategory.h"

@implementation UITextView (XRCategory)

+ (instancetype)create:(void (^)(UITextView *))block{
    UITextView *obj = [[UITextView alloc] init];
    if (block) block(obj);
    return obj;
}


- (UITextView *(^)(NSString *))Text{
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UITextView *(^)(NSAttributedString *))attributeTxt{
    return ^(NSAttributedString *text){
        self.attributedText = text;
        return self;
    };
}

- (UITextView *(^)(UIColor *))TextColor{
    return ^(UIColor *color){
        self.textColor = color;
        return self;
    };
}

- (UITextView *(^)(UIFont *))Font{
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}

- (UITextView *(^)(NSInteger))fontSize{
    return ^(NSInteger size){
        self.font = [UIFont systemFontOfSize:size];
        return self;
    };
}

- (UITextView *(^)(NSTextAlignment))TextAlignment{
    return ^(NSTextAlignment alignment){
        self.textAlignment = alignment;
        return self;
    };
}

- (UITextView *(^)(id<UITextViewDelegate>))Delegate {
    return ^(id<UITextViewDelegate> delegate) {
        self.delegate = delegate;
        return self;
    };
}

- (UITextView *(^)(BOOL))allowEditTxtAttribute {
    return ^(BOOL b){
        self.allowsEditingTextAttributes = b;
        return self;
    };
}

- (UITextView *(^)(UIView *))inputV {
    return ^(UIView *view){
        self.inputView = view;
        return self;
    };
}

- (UITextView *(^)(UIView *))inputAccessoryV {
    return ^(UIView *view){
        self.inputAccessoryView = view;
        return self;
    };
}

- (UITextView *(^)(NSRange))selectRange {
    return ^(NSRange range){
        self.selectedRange = range;
        return self;
    };
}

- (UITextView *(^)(BOOL))editAble {
    return ^(BOOL b){
        self.editable = b;
        return self;
    };
}

- (UITextView *(^)(BOOL))selectAble {
    return ^(BOOL b){
        self.selectable = b;
        return self;
    };
}

- (UITextView *(^)(UIDataDetectorTypes))dataDetectorType {
    return ^(UIDataDetectorTypes type){
        self.dataDetectorTypes = type;
        return self;
    };
}

- (UITextView *(^)(UIEdgeInsets))txtContainerInset {
    return ^(UIEdgeInsets edge){
        self.textContainerInset = edge;
        return self;
    };
}

- (UITextView *(^)(NSDictionary *))linkTxtAttributes {
    return ^(NSDictionary *attributes){
        self.linkTextAttributes = attributes;
        return self;
    };
}

- (UITextView *(^)(NSRange))scrollRangeToVisible {
    return ^(NSRange range){
        [self scrollRangeToVisible:range];
        return self;
    };
}
@end
