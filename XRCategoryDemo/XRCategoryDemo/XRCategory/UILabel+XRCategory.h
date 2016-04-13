//
//  UILabel+XRCategory.h
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (XRCategory)
+ (instancetype)create:(void(^)(UILabel *obj))block;

//text
@property (nonatomic, strong, readonly) UILabel *(^Text)(NSString *);

@property (nonatomic, strong, readonly) UILabel *(^attributeText)(NSAttributedString *);
@property (nonatomic, strong, readonly) UILabel *(^TextAlignment)(NSTextAlignment);
@property (nonatomic, strong, readonly) UILabel *(^TextColor)(UIColor *);
@property (nonatomic, strong, readonly) UILabel *(^textColorRGB)(CGFloat, CGFloat, CGFloat, CGFloat);
@property (nonatomic, strong, readonly) UILabel *(^highlightTextColor)(UIColor *);
@property (nonatomic, strong, readonly) UILabel *(^highlight)(BOOL);
@property (nonatomic, strong, readonly) UILabel *(^enable)(BOOL);

//font
@property (nonatomic, strong, readonly) UILabel *(^Font)(UIFont *);
@property (nonatomic, strong, readonly) UILabel *(^fontSize)(NSInteger);
@property (nonatomic, strong, readonly) UILabel *(^ShadowColor)(UIColor *);
@property (nonatomic, strong, readonly) UILabel *(^ShadowOffset)(CGSize);
@property (nonatomic, strong, readonly) UILabel *(^LineBreakMode)(NSLineBreakMode);
@property (nonatomic, strong, readonly) UILabel *(^numberOfLine)(NSInteger);

@property (nonatomic, strong, readonly) UILabel *(^adjustFontToFit)(BOOL);
@property (nonatomic, strong, readonly) UILabel *(^baselineAdjust)(UIBaselineAdjustment);

//drawTextInRect
@property (nonatomic, strong, readonly) UILabel *(^drawText)(CGRect);

@end
