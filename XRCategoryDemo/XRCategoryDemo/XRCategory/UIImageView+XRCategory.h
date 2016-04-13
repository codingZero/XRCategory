//
//  UIImageView+XRCategory.h
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (XRCategory)

+ (instancetype)create:(void(^)(UIImageView *obj))block;


//image
@property (nonatomic, strong, readonly) UIImageView *(^Image)(UIImage *);
//highlightedImage
@property (nonatomic, strong, readonly) UIImageView *(^highlightImg)(UIImage *);

@property (nonatomic, strong, readonly) UIImageView *(^highlight)(BOOL);

//animationImages
@property (nonatomic, strong, readonly) UIImageView *(^animationImgs)(NSArray *);
@property (nonatomic, strong, readonly) UIImageView *(^highlightAnimaImgs)(NSArray *);

//animationDuration
@property (nonatomic, strong, readonly) UIImageView *(^animaDuration)(NSTimeInterval);
//animationRepeatCount
@property (nonatomic, strong, readonly) UIImageView *(^animaRepeatCount)(NSInteger);

@end
