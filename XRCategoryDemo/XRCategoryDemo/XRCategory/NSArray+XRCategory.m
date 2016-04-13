//
//  NSArray+XRCategory.m
//  XRCategoryDemo
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import "NSArray+XRCategory.h"

@implementation NSArray (XRCategory)

+ (instancetype)createWithArray:(NSArray *)array :(void (^)(NSArray *))block{
    NSArray *obj = [[NSArray alloc] initWithArray:array];
    if (block) block(obj);
    return obj;
}


- (NSArray *(^)(id))arrayByAddObject {
    return ^(id obj) {
        return [self arrayByAddingObject:obj];
    };
}

- (NSArray *(^)(NSArray *))arrayByAddObjFromArray {
    return ^(NSArray *otherArray) {
        return [self arrayByAddingObjectsFromArray:otherArray];
    };
}

- (NSString *(^)(NSString *))componentsJoinByStr {
    return ^(NSString *str) {
        return [self componentsJoinedByString:str];
    };
}


- (NSUInteger (^)(id))indexOfObject {
    return ^(id obj) {
        return [self indexOfObject:obj];
    };
}

- (NSUInteger (^)(id, NSRange))indexOfObjInRange {
    return ^(id obj, NSRange range){
        return [self indexOfObject:obj inRange:range];
    };
}

- (BOOL (^)(id))containsObject {
    return ^(id obj) {
        return [self containsObject:obj];
    };
}

- (BOOL (^)(NSArray *))isEqualToArray {
    return ^(NSArray *otherArray) {
        return [self isEqualToArray:otherArray];
    };
}


- (BOOL (^)(NSString *, BOOL))writeToFileAtomical {
    return ^(NSString *path, BOOL b) {
        return [self writeToFile:path atomically:b];
    };
}

- (BOOL (^)(NSURL *, BOOL))writeToURLAtomical {
    return ^(NSURL *url, BOOL b) {
        return [self writeToURL:url atomically:b];
    };
}

- (NSArray *(^)(SEL))makeObjPerformSel {
    return ^(SEL selector) {
        [self makeObjectsPerformSelector:selector];
        return self;
    };
}


- (NSArray *(^)(SEL, id))makeObjPerformSelWithObj {
    return ^(SEL selector, id obj) {
        [self makeObjectsPerformSelector:selector withObject:obj];
        return self;
    };
}

- (id (^)(NSUInteger))objectAtIndex {
    return ^(NSUInteger index) {
        return [self objectAtIndex:index];
    };
}

- (NSArray *(^)(NSIndexSet *))objectsAtIndexes {
    return ^(NSIndexSet *set) {
        return [self objectsAtIndexes:set];
    };
}
@end



@implementation NSMutableArray (XRCategory)

+ (instancetype)create:(void (^)(NSMutableArray *))block{
    NSMutableArray *obj = [[NSMutableArray alloc] init];
    if (block) block(obj);
    return obj;
}

+ (instancetype)createWithArray:(NSArray *)array :(void (^)(NSMutableArray *))block{
    NSMutableArray *obj = [[NSMutableArray alloc] initWithArray:array];
    if (block) block(obj);
    return obj;
}

- (NSMutableArray *(^)(id))addObject {
    return ^(id obj) {
        [self addObject:obj];
        return self;
    };
}

- (NSMutableArray *(^)(id, NSUInteger))insertObjAtIndex {
    return ^(id obj, NSUInteger index) {
        [self insertObject:obj atIndex:index];
        return self;
    };
}

- (NSMutableArray *(^)())removeLastObj {
    return ^() {
        [self removeLastObject];
        return self;
    };
}

- (NSMutableArray *(^)(NSUInteger))removeObjAtIndex {
    return ^(NSUInteger index) {
        [self removeObjectAtIndex:index];
        return self;
    };
}

- (NSMutableArray *(^)(NSUInteger, id))reaplaceObjAtIndexWithObj {
    return ^(NSUInteger index, id obj) {
        [self replaceObjectAtIndex:index withObject:obj];
        return self;
    };
}

- (NSMutableArray *(^)(NSArray *))addObjsFromArray {
    return ^(NSArray *array) {
        [self addObjectsFromArray:array];
        return self;
    };
}

- (NSMutableArray *(^)(NSUInteger, NSUInteger))exchangeObjAtIndexWithIndex {
    return ^(NSUInteger index1, NSUInteger index2) {
        [self exchangeObjectAtIndex:index1 withObjectAtIndex:index2];
        return self;
    };
}

- (NSMutableArray *(^)())removeAllObjs{
    return ^(){
        [self removeAllObjects];
        return self;
    };
}

- (NSMutableArray *(^)(id, NSRange))removeObjInRange {
    return ^(id obj, NSRange range) {
        [self removeObject:obj inRange:range];
        return self;
    };
}

- (NSMutableArray *(^)(id))removeObject {
    return ^(id obj) {
        [self removeObject:obj];
        return self;
    };
}

- (NSMutableArray *(^)(NSArray *))removeObjsInArray {
    return ^(NSArray *array) {
        [self removeObjectsInArray:array];
        return self;
    };
}

- (NSMutableArray *(^)(NSRange))removeObjsInRange {
    return ^(NSRange range){
        [self removeObjectsInRange:range];
        return self;
    };
}


- (NSMutableArray *(^)(NSRange, NSArray *, NSRange))replaceObjsInRangeWithObjsFromArrayRange {
    return ^(NSRange range, NSArray *otherArray, NSRange otherRange) {
        [self replaceObjectsInRange:range withObjectsFromArray:otherArray range:otherRange];
        return self;
    };
}


- (NSMutableArray *(^)(NSRange, NSArray *))replaceObjsInRangeWithObjsFromArray {
    return ^(NSRange range, NSArray *otherArray) {
        [self replaceObjectsInRange:range withObjectsFromArray:otherArray];
        return self;
    };
}

- (NSMutableArray *(^)(NSArray *))setArray {
    return ^(NSArray *array) {
        [self setArray:array];
        return self;
    };
}

- (NSMutableArray *(^)(NSArray *, NSIndexSet *))insertObjsAtIndexes {
    return ^(NSArray *array, NSIndexSet *set) {
        [self insertObjects:array atIndexes:set];
        return self;
    };
}

- (NSMutableArray *(^)(NSIndexSet *))removeObjsAtIndexes {
    return ^(NSIndexSet *set) {
        [self removeObjectsAtIndexes:set];
        return self;
    };
}

- (NSMutableArray *(^)(NSIndexSet *, NSArray *))replaceObjsAtIndexesWithObjsFromArray {
    return ^(NSIndexSet *set, NSArray *array){
        [self replaceObjectsAtIndexes:set withObjects:array];
        return self;
    };
}


- (NSMutableArray *(^)(NSComparator))sortUsingComparator {
    return ^(NSComparator comparator) {
        [self sortedArrayUsingComparator:comparator];
        return self;
    };
}

@end
