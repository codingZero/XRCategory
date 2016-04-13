//
//  NSDictionary+XRCategory.m
//  XRCategoryDemo
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import "NSDictionary+XRCategory.h"

@implementation NSDictionary (XRCategory)

+ (instancetype)createWithDicdionary:(NSDictionary *)dic :(void (^)(NSDictionary *))block {
    NSDictionary *obj = [[NSDictionary alloc] initWithDictionary:dic];
    if (block) block(obj);
    return obj;
}

- (id (^)(id))objectForKey {
    return ^(id key) {
        return [self objectForKey:key];
    };
}

- (NSArray *(^)(id))allKeysForObject {
    return ^(id obj) {
        return [self allKeysForObject:obj];
    };
}

- (BOOL (^)(NSDictionary *))isEqualToDictionary {
    return ^(NSDictionary *dic) {
        return [self isEqualToDictionary:dic];
    };
}

- (NSArray *(^)(NSArray *, id))objsForKeysNotFindMarker {
    return ^(NSArray *keys, id marker) {
        return [self objectsForKeys:keys notFoundMarker:marker];
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

- (NSArray *(^)(SEL))keysSortByValueUseSel {
    return ^(SEL sel){
        return [self keysSortedByValueUsingSelector:sel];
    };
}

@end


@implementation NSMutableDictionary (XRCategory)
+ (instancetype)create:(void (^)(NSMutableDictionary *))block{
    NSMutableDictionary *obj = [[NSMutableDictionary alloc] init];
    if (block) block(obj);
    return obj;
}

+ (instancetype)createWithDicdionary:(NSDictionary *)dic :(void (^)(NSMutableDictionary *))block {
    NSMutableDictionary *obj = [[NSMutableDictionary alloc] initWithDictionary:dic];
    if (block) block(obj);
    return obj;
}

- (NSMutableDictionary *(^)(id))removeObjectForKey {
    return ^(id key) {
        [self removeObjectForKey:key];
        return self;
    };
}

- (NSMutableDictionary *(^)(id, id))setObjectForKey {
    return ^(id obj, id key) {
        [self setObject:obj forKey:key];
        return self;
    };
}

- (NSMutableDictionary *(^)())removeAllObjs {
    return ^(){
        [self removeAllObjects];
        return self;
    };
}

- (NSMutableDictionary *(^)(NSArray *))removeObjsForKeys {
    return ^(NSArray *keys) {
        [self removeObjectsForKeys:keys];
        return self;
    };
}

- (NSMutableDictionary *(^)(NSDictionary *))setDictionary {
    return ^(NSDictionary *dic) {
        [self setDictionary:dic];
        return self;
    };
}

@end
