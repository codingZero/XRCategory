//
//  UITextField+XRCategory.h
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (XRCategory)
+ (instancetype)create:(void(^)(UITextField *obj))block;


//text
@property (nonatomic, strong, readonly) UITextField *(^Text)(NSString *);
@property (nonatomic, strong, readonly) UITextField *(^attributeTxt)(NSAttributedString *);
@property (nonatomic, strong, readonly) UITextField *(^TextColor)(UIColor *);

//font
@property (nonatomic, strong, readonly) UITextField *(^Font)(UIFont *);
@property (nonatomic, strong, readonly) UITextField *(^fontSize)(NSInteger);

@property (nonatomic, strong, readonly) UITextField *(^TextAlignment)(NSTextAlignment);
@property (nonatomic, strong, readonly) UITextField *(^BorderStyle)(UITextBorderStyle);
@property (nonatomic, strong, readonly) UITextField *(^defaultTxtAttributes)(NSDictionary *);

//placeholder
@property (nonatomic, strong, readonly) UITextField *(^placeHolder)(NSString *);
@property (nonatomic, strong, readonly) UITextField *(^attributePlaceholder)(NSAttributedString *);
@property (nonatomic, strong, readonly) UITextField *(^clearOnBeginEdit)(BOOL);

//adjustsFontSizeToFitWidth
@property (nonatomic, strong, readonly) UITextField *(^adjustFontToWidth)(BOOL);
@property (nonatomic, strong, readonly) UITextField *(^Delegate)(id<UITextFieldDelegate>);

//background
@property (nonatomic, strong, readonly) UITextField *(^bgImage)(UIImage *);
//disableBackground
@property (nonatomic, strong, readonly) UITextField *(^disableBgImage)(UIImage *);


@property (nonatomic, strong, readonly) UITextField *(^allowEditTxtAttribute)(BOOL);
@property (nonatomic, strong, readonly) UITextField *(^clearBtnMode)(UITextFieldViewMode);

//leftView
@property (nonatomic, strong, readonly) UITextField *(^leftV)(UIView *);
//leftViewMode
@property (nonatomic, strong, readonly) UITextField *(^leftVMode)(UITextFieldViewMode);
//rightView
@property (nonatomic, strong, readonly) UITextField *(^rightV)(UIView *);
//rightViewMode
@property (nonatomic, strong, readonly) UITextField *(^rightVMode)(UITextFieldViewMode);

//drawPlaceholderInRect
@property (nonatomic, strong, readonly) UITextField *(^drawPlaceholder)(CGRect);
//drawTextInRect
@property (nonatomic, strong, readonly) UITextField *(^drawText)(CGRect);

//inputView
@property (nonatomic, strong, readonly) UITextField *(^inputV)(UIView *);
//inputAccessoryView
@property (nonatomic, strong, readonly) UITextField *(^inputAccessoryV)(UIView *);
@end
