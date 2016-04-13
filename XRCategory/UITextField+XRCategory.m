//
//  UITextField+XRCategory.m
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import "UITextField+XRCategory.h"

@implementation UITextField (XRCategory)

+ (instancetype)create:(void (^)(UITextField *))block{
    UITextField *obj = [[UITextField alloc] init];
    if (block) block(obj);
    return obj;
}

- (UITextField *(^)(NSString *))Text{
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UITextField *(^)(NSAttributedString *))attributeTxt{
    return ^(NSAttributedString *text){
        self.attributedText = text;
        return self;
    };
}

- (UITextField *(^)(UIColor *))TextColor{
    return ^(UIColor *color){
        self.textColor = color;
        return self;
    };
}

- (UITextField *(^)(UIFont *))Font{
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}

- (UITextField *(^)(NSInteger))fontSize{
    return ^(NSInteger size){
        self.font = [UIFont systemFontOfSize:size];
        return self;
    };
}

- (UITextField *(^)(NSTextAlignment))TextAlignment{
    return ^(NSTextAlignment alignment){
        self.textAlignment = alignment;
        return self;
    };
}

- (UITextField *(^)(UITextBorderStyle))BorderStyle{
    return ^(UITextBorderStyle style){
        self.borderStyle= style;
        return self;
    };
}

- (UITextField *(^)(NSDictionary *))defaultTxtAttributes{
    return ^(NSDictionary *attributes){
        self.defaultTextAttributes = attributes;
        return self;
    };
}

- (UITextField *(^)(NSString *))placeHolder{
    return ^(NSString *text){
        self.placeholder = text;
        return self;
    };
}

- (UITextField *(^)(NSAttributedString *))attributePlaceholder{
    return ^(NSAttributedString *text){
        self.attributedPlaceholder = text;
        return self;
    };
}

- (UITextField *(^)(BOOL))clearOnBeginEdit{
    return ^(BOOL b){
        self.clearsOnBeginEditing = b;
        return self;
    };
}

- (UITextField *(^)(BOOL))adjustFontToWidth{
    return ^(BOOL b){
        self.adjustsFontSizeToFitWidth = b;
        return self;
    };
}

- (UITextField *(^)(id<UITextFieldDelegate>))Delegate {
    return ^(id<UITextFieldDelegate> delegate) {
        self.delegate = delegate;
        return self;
    };
}

- (UITextField *(^)(UIImage *))bgImage {
    return ^(UIImage *image){
        self.background = image;
        return self;
    };
}

- (UITextField *(^)(UIImage *))disableBgImage {
    return ^(UIImage *image){
        self.disabledBackground = image;
        return self;
    };
}


- (UITextField *(^)(BOOL))allowEditTxtAttribute {
    return ^(BOOL b){
        self.allowsEditingTextAttributes = b;
        return self;
    };
}

- (UITextField *(^)(UITextFieldViewMode))clearBtnMode {
    return ^(UITextFieldViewMode mode){
        self.clearButtonMode = mode;
        return self;
    };
}

- (UITextField *(^)(UIView *))leftV {
    return ^(UIView *view){
        self.leftView = view;
        return self;
    };
}

- (UITextField *(^)(UITextFieldViewMode))leftVMode {
    return ^(UITextFieldViewMode mode){
        self.leftViewMode = mode;
        return self;
    };
}

- (UITextField *(^)(UIView *))rightV {
    return ^(UIView *view){
        self.rightView = view;
        return self;
    };
}

- (UITextField *(^)(UITextFieldViewMode))rightVMode {
    return ^(UITextFieldViewMode mode){
        self.rightViewMode = mode;
        return self;
    };
}

- (UITextField *(^)(CGRect))drawPlaceholder {
    return ^(CGRect rect){
        [self drawPlaceholderInRect:rect];
        return self;
    };
}

- (UITextField *(^)(CGRect))drawText {
    return ^(CGRect rect){
        [self drawTextInRect:rect];
        return self;
    };
}

- (UITextField *(^)(UIView *))inputV {
    return ^(UIView *view){
        self.inputView = view;
        return self;
    };
}

- (UITextField *(^)(UIView *))inputAccessoryV {
    return ^(UIView *view){
        self.inputAccessoryView = view;
        return self;
    };
}
@end
