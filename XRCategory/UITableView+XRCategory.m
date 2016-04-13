//
//  UITableView+XRCategory.m
//  XRCategoryDemo
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import "UITableView+XRCategory.h"

@implementation UITableView (XRCategory)



+ (instancetype)create:(void (^)(UITableView *))block{
    UITableView *obj = [[UITableView alloc] init];
    if (block) block(obj);
    return obj;
}


+ (instancetype)createWithStyle:(UITableViewStyle)style :(void(^)(UITableView *obj))block {
    UITableView *obj = [[UITableView alloc] initWithFrame:CGRectZero style:style];
    if (block) block(obj);
    return obj;
}


- (UITableView *(^)(id<UITableViewDataSource>))DataSource{
    return ^(id<UITableViewDataSource> dataSource){
        self.dataSource = dataSource;
        return self;
    };
}

- (UITableView *(^)(id<UITableViewDelegate>))Delegate{
    return ^(id<UITableViewDelegate> delegate){
        self.delegate = delegate;
        return self;
    };
}

- (UITableView *(^)(CGFloat))RowHeight {
    return ^(CGFloat height){
        self.rowHeight = height;
        return self;
    };
}

- (UITableView *(^)(CGFloat))sectionHeadHeight {
    return ^(CGFloat height){
        self.sectionHeaderHeight = height;
        return self;
    };
}

- (UITableView *(^)(CGFloat))sectionFootHeight {
    return ^(CGFloat height){
        self.sectionFooterHeight = height;
        return self;
    };
}

- (UITableView *(^)(CGFloat))estimateRowHeight {
    return ^(CGFloat height){
        self.estimatedRowHeight = height;
        return self;
    };
}

- (UITableView *(^)(UIEdgeInsets))separatInset {
    return ^(UIEdgeInsets inset) {
        self.separatorInset = inset;
        return self;
    };
}

- (UITableView *(^)(UIView *))bgView {
    return ^(UIView *view) {
        self.backgroundView = view;
        return self;
    };
}

- (UITableView *(^)(BOOL))edit {
    return ^(BOOL b) {
        self.editing = b;
        return self;
    };
}

- (UITableView *(^)(BOOL))allowSelect {
    return ^(BOOL b) {
        self.allowsSelection = b;
        return self;
    };
}
- (UITableView *(^)(BOOL))allowMultSelect {
    return ^(BOOL b) {
        self.allowsMultipleSelection = b;
        return self;
    };
}
- (UITableView *(^)(BOOL))allowSelectDuringEdit {
    return ^(BOOL b) {
        self.allowsSelectionDuringEditing = b;
        return self;
    };
}
- (UITableView *(^)(BOOL))allowMultSelectDuringEdit {
    return ^(BOOL b) {
        self.allowsMultipleSelectionDuringEditing = b;
        return self;
    };
}

- (UITableView *(^)(UIColor *))SectionIndexColor {
    return ^(UIColor *color) {
        self.sectionIndexColor = color;
        return self;
    };
}

- (UITableView *(^)(UIColor *))sectionIndexBgColor {
    return ^(UIColor *color) {
        self.sectionIndexBackgroundColor = color;
        return self;
    };
}

- (UITableView *(^)(UIColor *))sectionIndexTrackBgColor {
    return ^(UIColor *color) {
        self.sectionIndexTrackingBackgroundColor = color;
        return self;
    };
}

- (UITableView *(^)(UITableViewCellSeparatorStyle))separatStyle {
    return ^(UITableViewCellSeparatorStyle style) {
        self.separatorStyle = style;
        return self;
    };
}

- (UITableView *(^)(UIColor *))separatColor {
    return ^(UIColor *color) {
        self.separatorColor = color;
        return self;
    };
}


- (UITableView *(^)(NSIndexPath *, UITableViewScrollPosition, BOOL))scrollToIndexPathAtPositionAnimated {
    return ^(NSIndexPath *indexPath, UITableViewScrollPosition position, BOOL b){
        [self scrollToRowAtIndexPath:indexPath atScrollPosition:position animated:b];
        return self;
    };
}

- (UITableView *(^)(NSIndexSet *, UITableViewRowAnimation))reloadSectionsWithAnimation {
    return ^(NSIndexSet *sections, UITableViewRowAnimation animation){
        [self reloadSections:sections withRowAnimation:animation];
        return self;
    };
}

- (UITableView *(^)(NSArray *, UITableViewRowAnimation))reloadRowsAtIndexPathsWithAnimation {
    return ^(NSArray *indexPaths, UITableViewRowAnimation aniamtion){
        [self reloadRowsAtIndexPaths:indexPaths withRowAnimation:aniamtion];
        return self;
    };
}

- (UITableView *(^)(NSIndexPath *, NSIndexPath *))moveRowAtIndexPathToIndexPath {
    return ^(NSIndexPath *fromIndexPath, NSIndexPath *toIndexPath){
        [self moveRowAtIndexPath:fromIndexPath toIndexPath:toIndexPath];
        return self;
    };
}

- (UITableView *(^)(NSIndexPath *, BOOL, UITableViewScrollPosition))selecRowAtIndexPathAnimatedScrollPosition {
    return ^(NSIndexPath *indexPath, BOOL b, UITableViewScrollPosition position){
        [self selectRowAtIndexPath:indexPath animated:b scrollPosition:position];
        return self;
    };
}


- (UITableView *(^)(NSIndexPath *, BOOL))deselecRowAtIndexPathAnimated {
    return ^(NSIndexPath *indexPath, BOOL b){
        [self deselectRowAtIndexPath:indexPath animated:b];
        return self;
    };
}

- (UITableView *(^)(BOOL, BOOL))setEditingAnimated {
    return ^(BOOL b1, BOOL b2){
        [self setEditing:b1 animated:b2];
        return self;
    };
}

- (UITableView *(^)(UINib *, NSString *))registNibForCellId {
    return ^(UINib *nib, NSString *Id){
        [self registerNib:nib forCellReuseIdentifier:Id];
        return self;
    };
}

- (UITableView *(^)(Class, NSString *))registClassForCellId {
    return ^(Class class, NSString *Id){
        [self registerClass:class forCellReuseIdentifier:Id];
        return self;
    };
}


- (UITableView *(^)(UINib *, NSString *))registNibForHeadFootViewId {
    return ^(UINib *nib, NSString *Id){
        [self registerNib:nib forHeaderFooterViewReuseIdentifier:Id];
        return self;
    };
}

- (UITableView *(^)(Class, NSString *))registClassForHeadFootViewId {
    return ^(Class class, NSString *Id){
        [self registerClass:class forHeaderFooterViewReuseIdentifier:Id];
        return self;
    };
}

- (NSInteger (^)(NSInteger))numOfRowsInSection {
    return ^(NSInteger secion){
        return [self numberOfRowsInSection:secion];
    };
}

- (NSIndexPath *(^)(CGPoint))indexPathForRowAtPoint {
    return ^(CGPoint point){
        return [self indexPathForRowAtPoint:point];
    };
}

- (NSIndexPath *(^)(UITableViewCell *))indexPathForCell {
    return ^(UITableViewCell *cell){
        return [self indexPathForCell:cell];
    };
}

- (NSArray *(^)(CGRect))indexPathsForRowsInRect {
    return ^(CGRect rect){
        return [self indexPathsForRowsInRect:rect];
    };
}

- (UITableViewCell *(^)(NSIndexPath *))cellForRowAtIndexPath {
    return ^(NSIndexPath *indexPath){
        return [self cellForRowAtIndexPath:indexPath];
    };
}

- (UITableViewCell *(^)(NSString *))dequeueReuseCellWithId {
    return ^(NSString *Id){
        return [self dequeueReusableCellWithIdentifier:Id];
    };
}

- (UITableViewCell *(^)(NSString *, NSIndexPath *))dequeueReuseCellWithIdForIndexPath {
    return ^(NSString *Id, NSIndexPath *indexPath){
        return [self dequeueReusableCellWithIdentifier:Id forIndexPath:indexPath];
    };
}

- (UITableViewHeaderFooterView *(^)(NSInteger))headViewForSection {
    return ^(NSInteger section){
        return [self headerViewForSection:section];
    };
}

- (UITableViewHeaderFooterView *(^)(NSInteger))footViewForSection {
    return ^(NSInteger section){
        return [self footerViewForSection:section];
    };
}

- (UITableViewHeaderFooterView *(^)(NSString *))dequeueReuseHeadFootViewWithId {
    return ^(NSString *Id){
        return [self dequeueReusableHeaderFooterViewWithIdentifier:Id];
    };
}

@end
