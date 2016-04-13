//
//  UITableView+XRCategory.h
//  XRCategoryDemo
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (XRCategory)
+ (instancetype)create:(void(^)(UITableView *obj))block;
+ (instancetype)createWithStyle:(UITableViewStyle)style :(void(^)(UITableView *obj))block;
@property (nonatomic, strong, readonly) UITableView *(^DataSource)(id<UITableViewDataSource>);
@property (nonatomic, strong, readonly) UITableView *(^Delegate)(id<UITableViewDelegate>);
@property (nonatomic, strong, readonly) UITableView *(^RowHeight)(CGFloat);
@property (nonatomic, strong, readonly) UITableView *(^sectionHeadHeight)(CGFloat);
@property (nonatomic, strong, readonly) UITableView *(^sectionFootHeight)(CGFloat);
@property (nonatomic, strong, readonly) UITableView *(^estimateRowHeight)(CGFloat);
@property (nonatomic, strong, readonly) UITableView *(^separatInset)(UIEdgeInsets);
@property (nonatomic, strong, readonly) UITableView *(^bgView)(UIView *);
@property (nonatomic, strong, readonly) UITableView *(^edit)(BOOL);
@property (nonatomic, strong, readonly) UITableView *(^allowSelect)(BOOL);
@property (nonatomic, strong, readonly) UITableView *(^allowMultSelect)(BOOL);
@property (nonatomic, strong, readonly) UITableView *(^allowSelectDuringEdit)(BOOL);
@property (nonatomic, strong, readonly) UITableView *(^allowMultSelectDuringEdit)(BOOL);
@property (nonatomic, strong, readonly) UITableView *(^SectionIndexColor)(UIColor *);
@property (nonatomic, strong, readonly) UITableView *(^sectionIndexBgColor)(UIColor *);
@property (nonatomic, strong, readonly) UITableView *(^sectionIndexTrackBgColor)(UIColor *);
@property (nonatomic, strong, readonly) UITableView *(^separatStyle)(UITableViewCellSeparatorStyle);
@property (nonatomic, strong, readonly) UITableView *(^separatColor)(UIColor *);




/**
 *  scrollToRowAtIndexPath:(NSIndexPath *)indexPath atScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated
 */
@property (nonatomic, strong, readonly) UITableView *(^scrollToIndexPathAtPositionAnimated)(NSIndexPath *, UITableViewScrollPosition, BOOL);

/**
 *  reloadSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation
 */
@property (nonatomic, strong, readonly) UITableView *(^reloadSectionsWithAnimation)(NSIndexSet *, UITableViewRowAnimation);

/**
 *  reloadRowsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation
 */
@property (nonatomic, strong, readonly) UITableView *(^reloadRowsAtIndexPathsWithAnimation)(NSArray *, UITableViewRowAnimation);

/**
 *  moveRowAtIndexPath:(NSIndexPath *)indexPath toIndexPath:(NSIndexPath *)newIndexPath
 */
@property (nonatomic, strong, readonly) UITableView *(^moveRowAtIndexPathToIndexPath)(NSIndexPath *, NSIndexPath *);

/**
 *  selectRowAtIndexPath:(nullable NSIndexPath *)indexPath animated:(BOOL)animated scrollPosition:(UITableViewScrollPosition)scrollPosition
 */
@property (nonatomic, strong, readonly) UITableView *(^selecRowAtIndexPathAnimatedScrollPosition)(NSIndexPath *, BOOL, UITableViewScrollPosition);

/**
 *  deselectRowAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated
 */
@property (nonatomic, strong, readonly) UITableView *(^deselecRowAtIndexPathAnimated)(NSIndexPath *, BOOL);

/**
 *  setEditing:(BOOL)editing animated:(BOOL)animated
 */
@property (nonatomic, strong, readonly) UITableView *(^setEditingAnimated)(BOOL, BOOL);

/**
 *  registerNib:(nullable UINib *)nib forCellReuseIdentifier:(NSString *)identifier
 */
@property (nonatomic, strong, readonly) UITableView *(^registNibForCellId)(UINib *, NSString *);

/**
 *  registerClass:(nullable Class)cellClass forCellReuseIdentifier:(NSString *)identifier
 */
@property (nonatomic, strong, readonly) UITableView *(^registClassForCellId)(Class, NSString *);

/**
 *  registerNib:(nullable UINib *)nib forHeaderFooterViewReuseIdentifier:(NSString *)identifier
 */
@property (nonatomic, strong, readonly) UITableView *(^registNibForHeadFootViewId)(UINib *, NSString *);

/**
 *  registerClass:(nullable UINib *)nib forHeaderFooterViewReuseIdentifier:(NSString *)identifier
 */
@property (nonatomic, strong, readonly) UITableView *(^registClassForHeadFootViewId)(Class, NSString *);


/**
 *  numberOfRowsInSection:(NSInteger)section
 */
@property (nonatomic, strong, readonly) NSInteger(^numOfRowsInSection)(NSInteger);


/**
 *  indexPathForRowAtPoint:(CGPoint)point
 */
@property (nonatomic, strong, readonly) NSIndexPath *(^indexPathForRowAtPoint)(CGPoint);


/**
 *  indexPathForCell:(UITableViewCell *)cell
 */
@property (nonatomic, strong, readonly) NSIndexPath *(^indexPathForCell)(UITableViewCell *);

/**
 *  indexPathsForRowsInRect:(CGRect)rect
 */
@property (nonatomic, strong, readonly) NSArray *(^indexPathsForRowsInRect)(CGRect);


/**
 *  cellForRowAtIndexPath:(NSIndexPath *)indexPath
 */
@property (nonatomic, strong, readonly) UITableViewCell *(^cellForRowAtIndexPath)(NSIndexPath *);

/**
 *  headerViewForSection:(NSInteger)section
 */
@property (nonatomic, strong, readonly) UITableViewHeaderFooterView *(^headViewForSection)(NSInteger);

/**
 *  footerViewForSection:(NSInteger)section
 */
@property (nonatomic, strong, readonly) UITableViewHeaderFooterView *(^footViewForSection)(NSInteger);

/**
 *  dequeueReusableCellWithIdentifier:(NSString *)identifier
 */
@property (nonatomic, strong, readonly) UITableViewCell *(^dequeueReuseCellWithId)(NSString *);

/**
 *  dequeueReusableCellWithIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath
 */
@property (nonatomic, strong, readonly) UITableViewCell *(^dequeueReuseCellWithIdForIndexPath)(NSString *, NSIndexPath *);

/**
 *  dequeueReusableHeaderFooterViewWithIdentifier:(NSString *)identifier
 */
@property (nonatomic, strong, readonly) UITableViewHeaderFooterView *(^dequeueReuseHeadFootViewWithId)(NSString *);

@end
