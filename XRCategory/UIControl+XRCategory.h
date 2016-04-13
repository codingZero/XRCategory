//
//  UIControl+XRCategory.h
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (XRCategory)
//enabled
@property (nonatomic, strong, readonly) UIControl *(^enable)(BOOL);

//selected
@property (nonatomic, strong, readonly) UIControl *(^select)(BOOL);

//highlighted
@property (nonatomic, strong, readonly) UIControl *(^highlight)(BOOL);

//contentVerticalAlignment
@property (nonatomic, strong, readonly) UIControl *(^verticalAlignment)(UIControlContentVerticalAlignment);

//contentHorizontalAlignment
@property (nonatomic, strong, readonly) UIControl *(^horizontalAlignment)(UIControlContentHorizontalAlignment);

@property (nonatomic, strong, readonly) UIControl *(^addTarget)(id, SEL, UIControlEvents);
@property (nonatomic, strong, readonly) UIControl *(^removeTarget)(id, SEL, UIControlEvents);
@end
