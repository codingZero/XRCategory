//
//  NSArray+XRCategory.h
//  XRCategoryDemo
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (XRCategory)
+ (instancetype)createWithArray:(NSArray *)array :(void(^)(NSArray *obj))block;

@property (nonatomic, strong, readonly) NSArray *(^arrayByAddObject)(id);
@property (nonatomic, strong, readonly) NSArray *(^arrayByAddObjFromArray)(NSArray *);
@property (nonatomic, strong, readonly) NSString *(^componentsJoinByStr)(NSString *);
@property (nonatomic, strong, readonly) BOOL (^containsObject)(id);
@property (nonatomic, strong, readonly) NSUInteger (^indexOfObject)(id);
@property (nonatomic, strong, readonly) NSUInteger (^indexOfObjInRange)(id, NSRange);
@property (nonatomic, strong, readonly) BOOL (^isEqualToArray)(NSArray *);
@property (nonatomic, strong, readonly) BOOL (^writeToFileAtomical)(NSString *, BOOL);
@property (nonatomic, strong, readonly) BOOL (^writeToURLAtomical)(NSURL *, BOOL);

/**
 *  makeObjectsPerformSelector:(SEL)aSelector
 */
@property (nonatomic, strong, readonly) NSArray *(^makeObjPerformSel)(SEL);

/**
 *  makeObjectsPerformSelector:(SEL)aSelector withObject:(nullable id)argument
 */
@property (nonatomic, strong, readonly) NSArray *(^makeObjPerformSelWithObj)(SEL, id);

@property (nonatomic, strong, readonly) id (^objectAtIndex)(NSUInteger);
@property (nonatomic, strong, readonly) NSArray *(^objectsAtIndexes)(NSIndexSet *);

@end


@interface NSMutableArray (XRCategory)
+ (instancetype)create:(void(^)(NSMutableArray *obj))block;
+ (instancetype)createWithArray:(NSArray *)array :(void(^)(NSMutableArray *obj))block;
@property (nonatomic, strong, readonly) NSMutableArray *(^addObject)(id);
@property (nonatomic, strong, readonly) NSMutableArray *(^insertObjAtIndex)(id, NSUInteger);
@property (nonatomic, strong, readonly) NSMutableArray *(^removeLastObj)();
@property (nonatomic, strong, readonly) NSMutableArray *(^removeObjAtIndex)(NSUInteger);
@property (nonatomic, strong, readonly) NSMutableArray *(^reaplaceObjAtIndexWithObj)(NSUInteger ,id);
@property (nonatomic, strong, readonly) NSMutableArray *(^addObjsFromArray)(NSArray *);
@property (nonatomic, strong, readonly) NSMutableArray *(^exchangeObjAtIndexWithIndex)(NSUInteger, NSUInteger);
@property (nonatomic, strong, readonly) NSMutableArray *(^removeAllObjs)();

/**
 *  removeObject:(ObjectType)anObject inRange:(NSRange)range
 */
@property (nonatomic, strong, readonly) NSMutableArray *(^removeObjInRange)(id, NSRange);
@property (nonatomic, strong, readonly) NSMutableArray *(^removeObject)(id);
@property (nonatomic, strong, readonly) NSMutableArray *(^removeObjsInArray)(NSArray *);
/**
 *  removeObjectsInRange:(NSRange)range
 */
@property (nonatomic, strong, readonly) NSMutableArray *(^removeObjsInRange)(NSRange);

/**
 *  replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray<ObjectType> *)otherArray range:(NSRange)otherRange
 */
@property (nonatomic, strong, readonly) NSMutableArray *(^replaceObjsInRangeWithObjsFromArrayRange)(NSRange, NSArray *, NSRange);

/**
 *  replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray<ObjectType> *)otherArray
 */
@property (nonatomic, strong, readonly) NSMutableArray *(^replaceObjsInRangeWithObjsFromArray)(NSRange, NSArray *);

@property (nonatomic, strong, readonly) NSMutableArray *(^setArray)(NSArray *);

/**
 *  insertObjects:(NSArray<ObjectType> *)objects atIndexes:(NSIndexSet *)indexes
 */
@property (nonatomic, strong, readonly) NSMutableArray *(^insertObjsAtIndexes)(NSArray *, NSIndexSet *);

/**
 *  removeObjectsAtIndexes:(NSIndexSet *)indexes
 */
@property (nonatomic, strong, readonly) NSMutableArray *(^removeObjsAtIndexes)(NSIndexSet *);

/**
 *  replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray<ObjectType> *)objects
 */
@property (nonatomic, strong, readonly) NSMutableArray *(^replaceObjsAtIndexesWithObjsFromArray)(NSIndexSet *, NSArray *);

@property (nonatomic, strong, readonly) NSMutableArray *(^sortUsingComparator)(NSComparator);
@end
