//
//  UITextView+XRCategory.h
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (XRCategory)

+ (instancetype)create:(void(^)(UITextView *obj))block;

//text
@property (nonatomic, strong, readonly) UITextView *(^Text)(NSString *);
@property (nonatomic, strong, readonly) UITextView *(^attributeTxt)(NSAttributedString *);
@property (nonatomic, strong, readonly) UITextView *(^TextColor)(UIColor *);

//font
@property (nonatomic, strong, readonly) UITextView *(^Font)(UIFont *);
@property (nonatomic, strong, readonly) UITextView *(^fontSize)(NSInteger);

@property (nonatomic, strong, readonly) UITextView *(^TextAlignment)(NSTextAlignment);
@property (nonatomic, strong, readonly) UITextView *(^Delegate)(id<UITextViewDelegate>);
@property (nonatomic, strong, readonly) UITextView *(^allowEditTxtAttribute)(BOOL);

//inputView
@property (nonatomic, strong, readonly) UITextView *(^inputV)(UIView *);
//inputAccessoryView
@property (nonatomic, strong, readonly) UITextView *(^inputAccessoryV)(UIView *);


@property (nonatomic, strong, readonly) UITextView *(^selectRange)(NSRange);
@property (nonatomic, strong, readonly) UITextView *(^editAble)(BOOL);
@property (nonatomic, strong, readonly) UITextView *(^selectAble)(BOOL);
@property (nonatomic, strong, readonly) UITextView *(^dataDetectorType)(UIDataDetectorTypes);
@property (nonatomic, strong, readonly) UITextView *(^txtContainerInset)(UIEdgeInsets);
@property (nonatomic, strong, readonly) UITextView *(^linkTxtAttributes)(NSDictionary *);
@property (nonatomic, strong, readonly) UITextView *(^scrollRangeToVisible)(NSRange);

@end
