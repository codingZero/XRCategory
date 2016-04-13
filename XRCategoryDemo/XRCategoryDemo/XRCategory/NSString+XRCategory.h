//
//  NSString+XRCategory.h
//  XRCategoryDemo
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (XRCategory)

+ (instancetype)createWithString:(NSString *)str :(void(^)(NSString *obj))block;

@property (nonatomic, strong, readonly) unichar (^charAtIndex)(NSUInteger);
@property (nonatomic, strong, readonly) NSString *(^subStrFromIndex)(NSUInteger);
@property (nonatomic, strong, readonly) NSString *(^subStrToIndex)(NSUInteger);
@property (nonatomic, strong, readonly) NSString *(^subStrWithRange)(NSRange);
@property (nonatomic, strong, readonly) BOOL (^isEqualToString)(NSString *);
@property (nonatomic, strong, readonly) NSComparisonResult (^compare)(NSString *);
@property (nonatomic, strong, readonly) NSRange (^rangeOfString)(NSString *);
@property (nonatomic, strong, readonly) BOOL (^hasPrefix)(NSString *);
@property (nonatomic, strong, readonly) BOOL (^hasSuffix)(NSString *);
@property (nonatomic, strong, readonly) BOOL (^containsString)(NSString *);
@property (nonatomic, strong, readonly) NSString *(^stringByAppendStr)(NSString *);
@property (nonatomic, strong, readonly) NSData *(^dataUsingEncoding)(NSStringEncoding);
@property (nonatomic, strong, readonly) const char *(^cStringUsingEncoding)(NSStringEncoding);


/**
 *  componentsSeparatedByString:(NSString *)separator
 */
@property (nonatomic, strong, readonly) NSArray *(^componentSeparatByStr)(NSString *);

/**
 *  stringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement
 */
@property (nonatomic, strong, readonly) NSString *(^stringByReplaceStringWithStr)(NSString *, NSString *);

/**
 *  stringByReplacingCharactersInRange:(NSRange)range withString:(NSString *)replacement
 */
@property (nonatomic, strong, readonly) NSString *(^stringByReplaceCharInRangeWithStr)(NSRange, NSString *);


/**
 *  writeToURL:(NSURL *)url atomically:(BOOL)useAuxiliaryFile encoding:(NSStringEncoding)enc error:(NSError **)error
 */
@property (nonatomic, strong, readonly) BOOL (^writeToFileAtomical)(NSString *, BOOL, NSStringEncoding, NSError **);

/**
 *  writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile encoding:(NSStringEncoding)enc error:(NSError **)error
 */
@property (nonatomic, strong, readonly) BOOL (^writeToURLAtomical)(NSURL *, BOOL, NSStringEncoding, NSError **);


@end


@interface NSMutableString (XRCategory)

+ (instancetype)create:(void(^)(NSMutableString *obj))block;
+ (instancetype)createWithString:(NSString *)str :(void(^)(NSMutableString *obj))block;

@property (nonatomic, strong, readonly) NSMutableString *(^replaceCharInRange)(NSRange, NSString *);
@property (nonatomic, strong, readonly) NSMutableString *(^insertStrAtIndex)(NSString *, NSUInteger);
@property (nonatomic, strong, readonly) NSMutableString *(^deleteCharInRange)(NSRange);
@property (nonatomic, strong, readonly) NSMutableString *(^appendStr)(NSString *);
@property (nonatomic, strong, readonly) NSMutableString *(^setString)(NSString *);
@end
