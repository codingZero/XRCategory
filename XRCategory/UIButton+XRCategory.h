//
//  UIButton+XRCategory.h
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (XRCategory)
+ (instancetype)create:(void(^)(UIButton *obj))block;

//contentEdgeInsets
@property (nonatomic, strong, readonly) UIButton *(^contentEdge)(UIEdgeInsets);
@property (nonatomic, strong, readonly) UIButton *(^contentEdgeEle)(CGFloat, CGFloat, CGFloat, CGFloat);

//imageEdgeInsets
@property (nonatomic, strong, readonly) UIButton *(^imageEdge)(UIEdgeInsets);
@property (nonatomic, strong, readonly) UIButton *(^imageEdgeEle)(CGFloat, CGFloat, CGFloat, CGFloat);

//titleEdgeInsets
@property (nonatomic, strong, readonly) UIButton *(^titleEdge)(UIEdgeInsets);
@property (nonatomic, strong, readonly) UIButton *(^titleEdgeEle)(CGFloat, CGFloat, CGFloat, CGFloat);

@property (nonatomic, strong, readonly) UIButton *(^adjustImgWhenHighlight)(BOOL);
@property (nonatomic, strong, readonly) UIButton *(^adjustImgWhenDisable)(BOOL);
@property (nonatomic, strong, readonly) UIButton *(^showTouchWhenHighlight)(BOOL);

@property (nonatomic, strong, readonly) UIButton *(^setTitleForState)(NSString *, UIControlState);
@property (nonatomic, strong, readonly) UIButton *(^setTitleColorForState)(UIColor *, UIControlState);
@property (nonatomic, strong, readonly) UIButton *(^setShadowColorForState)(UIColor *, UIControlState);
@property (nonatomic, strong, readonly) UIButton *(^setImageForState)(UIImage *, UIControlState);
@property (nonatomic, strong, readonly) UIButton *(^setBgImageForState)(UIImage *, UIControlState);
@property (nonatomic, strong, readonly) UIButton *(^setAttrituteTitleForState)(NSAttributedString *, UIControlState);


/**
 *  以下属性是用来取值的，返回值不为方法调用者
 */
@property (nonatomic, strong, readonly) NSString *(^titleForState)(UIControlState);
@property (nonatomic, strong, readonly) NSAttributedString *(^attributeTitleForState)(UIControlState);
@property (nonatomic, strong, readonly) UIColor *(^titleColorForState)(UIControlState);
@property (nonatomic, strong, readonly) UIColor *(^shadowColorForState)(UIControlState);
@property (nonatomic, strong, readonly) UIImage *(^imageForState)(UIControlState);
@property (nonatomic, strong, readonly) UIImage *(^bgImageForState)(UIControlState);

@end
