//
//  UIScrollView+XRCategory.h
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (XRCategory)
+ (instancetype)create:(void(^)(UIScrollView *obj))block;


@property (nonatomic, strong, readonly) UIScrollView *(^ContentOffset)(CGPoint);
@property (nonatomic, strong, readonly) UIScrollView *(^ContentSize)(CGSize);
@property (nonatomic, strong, readonly) UIScrollView *(^ContentInset)(UIEdgeInsets);
@property (nonatomic, strong, readonly) UIScrollView *(^Delegate)(id<UIScrollViewDelegate>);
@property (nonatomic, strong, readonly) UIScrollView *(^bounce)(BOOL);

//alwaysBounceVertical
@property (nonatomic, strong, readonly) UIScrollView *(^alwaysBounceV)(BOOL);
//alwaysBounceHorizontal
@property (nonatomic, strong, readonly) UIScrollView *(^alwaysBounceH)(BOOL);
@property (nonatomic, strong, readonly) UIScrollView *(^pagingEnable)(BOOL);
@property (nonatomic, strong, readonly) UIScrollView *(^scrollEnable)(BOOL);

//showsHorizontalScrollIndicator
@property (nonatomic, strong, readonly) UIScrollView *(^showHIndicator)(BOOL);
//showsVerticalScrollIndicator
@property (nonatomic, strong, readonly) UIScrollView *(^showVIndicator)(BOOL);


@property (nonatomic, strong, readonly) UIScrollView *(^scrollIndecatorInset)(UIEdgeInsets);
@property (nonatomic, strong, readonly) UIScrollView *(^IndicatorStyle)(UIScrollViewIndicatorStyle);
@property (nonatomic, strong, readonly) UIScrollView *(^deceleratRate)(CGFloat);
@property (nonatomic, strong, readonly) UIScrollView *(^ZoomScale)(CGFloat);
@property (nonatomic, strong, readonly) UIScrollView *(^minZoomScale)(CGFloat);
@property (nonatomic, strong, readonly) UIScrollView *(^maxZoomScale)(CGFloat);
@property (nonatomic, strong, readonly) UIScrollView *(^bounceZoom)(BOOL);
@property (nonatomic, strong, readonly) UIScrollView *(^scrollToTop)(BOOL);



//- (void)setContentOffset:(CGPoint)contentOffset animated:(BOOL)animated; 
@property (nonatomic, strong, readonly) UIScrollView *(^setContentOffsetAnimated)(CGPoint, BOOL);

//- (void)scrollRectToVisible:(CGRect)rect animated:(BOOL)animated;
@property (nonatomic, strong, readonly) UIScrollView *(^scrollRectToVisibleAnimated)(CGRect, BOOL);

//- (void)setZoomScale:(CGFloat)scale animated:(BOOL)animated
@property (nonatomic, strong, readonly) UIScrollView *(^setZoomScaleAnimated)(CGFloat, BOOL);

//- (void)zoomToRect:(CGRect)rect animated:(BOOL)animated
@property (nonatomic, strong, readonly) UIScrollView *(^zoomToRectAnimated)(CGRect, BOOL);
@end
