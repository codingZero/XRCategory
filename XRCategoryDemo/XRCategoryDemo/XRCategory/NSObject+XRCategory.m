//
//  NSObject+XRCategory.m
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import "NSObject+XRCategory.h"

@implementation NSObject (XRCategory)

+ (instancetype)create:(void (^)(id))block{
    id obj = [[self alloc] init];
    if (block) block(obj);
    return obj;
}

//- (id (^)(SEL, id, id))performSelWith2Obj {
//    return ^(SEL selector, id obj1, id obj2) {
//        return [self performSelector:selector withObject:obj1 withObject:obj2];
//    };
//}


- (void (^)(SEL, id, NSTimeInterval))performSelAfterDelay {
    return ^(SEL selector, id obj, NSTimeInterval delay){
        [self performSelector:selector withObject:obj afterDelay:delay];
    };
}


- (void(^)(SEL, id, BOOL))performSelOnMainThread {
    return ^(SEL selector, id obj, BOOL b) {
        [self performSelectorOnMainThread:selector withObject:obj waitUntilDone:b];
    };
}

- (void(^)(SEL, NSThread *, id, BOOL))performSelOnThread {
    return ^(SEL selector, NSThread * thread, id obj, BOOL b) {
        return [self performSelector:selector onThread:thread withObject:obj waitUntilDone:b];
    };
}

- (void(^)(SEL , id))performSelInBackground {
    return ^(SEL selector, id obj) {
        return [self performSelectorInBackground:selector withObject:obj];
    };
}


- (BOOL (^)(__unsafe_unretained Class))isKindOfClass {
    return ^(Class class){
        return [self isKindOfClass:class];
    };
}

- (BOOL (^)(__unsafe_unretained Class))isMemberOfClass {
    return ^(Class class){
        return [self isMemberOfClass:class];
    };
}

- (BOOL (^)(Protocol *))conformsToProtocol {
    return ^(Protocol *protocol){
        return [self conformsToProtocol:protocol];
    };
}

- (BOOL (^)(SEL))respondsToSelector {
    return ^(SEL selector){
        return [self respondsToSelector:selector];
    };
}

- (BOOL (^)(id))isEqual {
    return ^(id obj){
        return [self isKindOfClass:obj];
    };
}

- (id (^)(NSString *))valueForKey{
    return ^(NSString *key) {
        return [self valueForKey:key];
    };
}

- (id (^)(NSString *))valueForKeyPath{
    return ^(NSString *keyPath) {
        return [self valueForKeyPath:keyPath];
    };
}

- (void (^)(id, NSString *))setValueForKey {
    return ^(id value, NSString * key) {
        [self setValue:value forKey:key];
    };
}

- (void (^)(id, NSString *))setValueForKeyPath {
    return ^(id value, NSString * keyPath) {
        [self setValue:value forKey:keyPath];
    };
}

- (void (^)(NSDictionary *))setValuesForKeysWithDic {
    return ^(NSDictionary *dic) {
        [self setValuesForKeysWithDictionary:dic];
    };
}

- (NSDictionary *(^)(NSArray *))dicWithValuesForKeys {
    return ^(NSArray *keys) {
        return [self dictionaryWithValuesForKeys:keys];
    };
}

@end
