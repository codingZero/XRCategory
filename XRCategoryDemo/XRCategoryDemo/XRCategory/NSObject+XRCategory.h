//
//  NSObject+XRCategory.h
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (XRCategory)
+ (instancetype)create:(void(^)(id obj))block;


//- (id)performSelector:(SEL)aSelector withObject:(id)object1 withObject:(id)object2;
//@property (nonatomic, strong, readonly) id(^performSelWith2Obj)(SEL, id, id);

//- (void)performSelector:(SEL)aSelector withObject:(nullable id)anArgument afterDelay:(NSTimeInterval)delay;
@property (nonatomic, strong, readonly) void(^performSelAfterDelay)(SEL, id, NSTimeInterval);

//- (void)performSelectorOnMainThread:(SEL)aSelector withObject:(nullable id)arg waitUntilDone:(BOOL)wait;
@property (nonatomic, strong, readonly) void(^performSelOnMainThread)(SEL, id, BOOL);

//- (void)performSelector:(SEL)aSelector onThread:(NSThread *)thr withObject:(nullable id)arg waitUntilDone:(BOOL)wait
@property (nonatomic, strong, readonly) void(^performSelOnThread)(SEL, NSThread *, id, BOOL);

//- (void)performSelectorInBackground:(SEL)aSelector withObject:(nullable id)arg
@property (nonatomic, strong, readonly) void(^performSelInBackground)(SEL, id);

//- (BOOL)isKindOfClass:(Class)aClass;
@property (nonatomic, strong, readonly) BOOL(^isKindOfClass)(Class);

//- (BOOL)isMemberOfClass:(Class)aClass;
@property (nonatomic, strong, readonly) BOOL(^isMemberOfClass)(Class);

//- (BOOL)conformsToProtocol:(Protocol *)aProtocol;
@property (nonatomic, strong, readonly) BOOL(^conformsToProtocol)(Protocol *);

//- (BOOL)respondsToSelector:(SEL)aSelector;
@property (nonatomic, strong, readonly) BOOL(^respondsToSelector)(SEL);

//- (BOOL)isEqual:(id)object;
@property (nonatomic, strong, readonly) BOOL(^isEqual)(id);

@property (nonatomic, strong, readonly) id (^valueForKey)(NSString *);
@property (nonatomic, strong, readonly) void(^setValueForKey)(id, NSString *);
@property (nonatomic, strong, readonly) id (^valueForKeyPath)(NSString *);
@property (nonatomic, strong, readonly) void(^setValueForKeyPath)(id, NSString *);
@property (nonatomic, strong, readonly) void(^setValuesForKeysWithDic)(NSDictionary *);
@property (nonatomic, strong, readonly) NSDictionary *(^dicWithValuesForKeys)(NSArray *);


@end
