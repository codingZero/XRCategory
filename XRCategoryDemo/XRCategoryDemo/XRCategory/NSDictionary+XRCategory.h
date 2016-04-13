//
//  NSDictionary+XRCategory.h
//  XRCategoryDemo
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (XRCategory)
+ (instancetype)createWithDicdionary:(NSDictionary *)dic :(void(^)(NSDictionary *obj))block;
@property (nonatomic, strong, readonly) id (^objectForKey)(id);
@property (nonatomic, strong, readonly) NSArray *(^allKeysForObject)(id);
@property (nonatomic, strong, readonly) BOOL (^isEqualToDictionary)(NSDictionary *);
/**
 *  objectsForKeys:(NSArray<KeyType> *)keys notFoundMarker:(ObjectType)marker
 */
@property (nonatomic, strong, readonly) NSArray *(^objsForKeysNotFindMarker)(NSArray *, id);
@property (nonatomic, strong, readonly) BOOL (^writeToFileAtomical)(NSString *, BOOL);
@property (nonatomic, strong, readonly) BOOL (^writeToURLAtomical)(NSURL *,BOOL);

/**
 *  keysSortedByValueUsingSelector:(SEL)comparator
 */
@property (nonatomic, strong, readonly) NSArray *(^keysSortByValueUseSel)(SEL);
@end

@interface NSMutableDictionary (XRCategory)
+ (instancetype)create:(void(^)(NSMutableDictionary *obj))block;
+ (instancetype)createWithDicdionary:(NSDictionary *)dic :(void(^)(NSMutableDictionary *obj))block;
@property (nonatomic, strong, readonly) NSMutableDictionary *(^removeObjectForKey)(id);
@property (nonatomic, strong, readonly) NSMutableDictionary *(^setObjectForKey)(id, id);
@property (nonatomic, strong, readonly) NSMutableDictionary *(^removeAllObjs)();
@property (nonatomic, strong, readonly) NSMutableDictionary *(^removeObjsForKeys)(NSArray *);
@property (nonatomic, strong, readonly) NSMutableDictionary *(^setDictionary)(NSDictionary *);
@end