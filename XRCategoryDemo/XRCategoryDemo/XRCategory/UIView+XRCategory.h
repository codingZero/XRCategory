//
//  UIView+XRCategory.h
//
//  Created by 肖睿 on 16/4/12.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (XRCategory)

+ (instancetype)create:(void(^)(UIView *obj))block;

@property (nonatomic, assign, readonly) CGFloat X;
@property (nonatomic, assign, readonly) CGFloat Y;
@property (nonatomic, assign, readonly) CGFloat Width;
@property (nonatomic, assign, readonly) CGFloat Height;
@property (nonatomic, assign, readonly) CGFloat CenterX;
@property (nonatomic, assign, readonly) CGFloat CenterY;

@property (nonatomic, strong, readonly) UIView *(^Frame)(CGRect);//frame
@property (nonatomic, strong, readonly) UIView *(^frameEle)(CGFloat, CGFloat, CGFloat, CGFloat);//frame
@property (nonatomic, strong, readonly) UIView *(^x)(CGFloat);//frame.origin.x
@property (nonatomic, strong, readonly) UIView *(^y)(CGFloat);//frame.origin.y
@property (nonatomic, strong, readonly) UIView *(^width)(CGFloat);//frame.origin.width
@property (nonatomic, strong, readonly) UIView *(^height)(CGFloat);//frame.origin.height
@property (nonatomic, strong, readonly) UIView *(^Bounds)(CGRect);//bounds
@property (nonatomic, strong, readonly) UIView *(^boundsEle)(CGFloat, CGFloat, CGFloat, CGFloat);//bounds
@property (nonatomic, strong, readonly) UIView *(^Center)(CGPoint);//center
@property (nonatomic, strong, readonly) UIView *(^centerEle)(CGFloat, CGFloat);//center
@property (nonatomic, strong, readonly) UIView *(^centerX)(CGFloat);//center.x
@property (nonatomic, strong, readonly) UIView *(^centerY)(CGFloat);//center.y
@property (nonatomic, strong, readonly) UIView *(^size)(CGSize);//frame.size
@property (nonatomic, strong, readonly) UIView *(^sizeEle)(CGFloat, CGFloat);//frame.size
@property (nonatomic, strong, readonly) UIView *(^origin)(CGPoint);//frame.origin
@property (nonatomic, strong, readonly) UIView *(^originEle)(CGFloat, CGFloat);//frame.origin


@property (nonatomic, strong, readonly) UIView *(^bgColor)(UIColor *);//backgroundColor
@property (nonatomic, strong, readonly) UIView *(^bgColorRGB)(CGFloat, CGFloat, CGFloat, CGFloat);//backgroundColor
@property (nonatomic, strong, readonly) UIView *(^Alpha)(CGFloat);
@property (nonatomic, strong, readonly) UIView *(^Opaque)(CGFloat);
@property (nonatomic, strong, readonly) UIView *(^cornerRadius)(CGFloat);
@property (nonatomic, strong, readonly) UIView *(^maskToBounds)(BOOL);
@property (nonatomic, strong, readonly) UIView *(^clipToBounds)(BOOL );
@property (nonatomic, strong, readonly) UIView *(^userInteractionEnable)(BOOL);
@property (nonatomic, strong, readonly) UIView *(^hide)(BOOL);
@property (nonatomic, strong, readonly) UIView *(^Tag)(NSInteger);
@property (nonatomic, strong, readonly) UIView *(^ContentMode)(UIViewContentMode);
@property (nonatomic, strong, readonly) UIView *(^multipleTouch)(BOOL);
@property (nonatomic, strong, readonly) UIView *(^autoresizeSubViews)(BOOL);
@property (nonatomic, strong, readonly) UIView *(^autoresizeMask)(BOOL);
@property (nonatomic, strong, readonly) UIView *(^endEdit)(BOOL);

@property (nonatomic, strong, readonly) UIView *(^removeFromSuperView)();
@property (nonatomic, strong, readonly) UIView *(^insertSubviewAtIndex)(UIView *, NSInteger);
@property (nonatomic, strong, readonly) UIView *(^exchangeSubviewAtIndexWithIndex)(NSInteger, NSInteger);
@property (nonatomic, strong, readonly) UIView *(^addSubview)(UIView *);
@property (nonatomic, strong, readonly) UIView *(^insertSubviewBelowView)(UIView *, UIView *);
@property (nonatomic, strong, readonly) UIView *(^insertSubviewAboveView)(UIView *, UIView *);
@property (nonatomic, strong, readonly) UIView *(^bringSubviewToFront)(UIView *);
@property (nonatomic, strong, readonly) UIView *(^sendSubviewToBack)(UIView *);


/**
 *  addGestureRecognizer:(UIGestureRecognizer*)gestureRecognizer
 *
 */
@property (nonatomic, strong, readonly) UIView *(^addGesture)(UIGestureRecognizer *);


/**
 *  removeGestureRecognizer:(UIGestureRecognizer*)gestureRecognizer
 *
 */
@property (nonatomic, strong, readonly) UIView *(^removeGesture)(UIGestureRecognizer *);


@end
