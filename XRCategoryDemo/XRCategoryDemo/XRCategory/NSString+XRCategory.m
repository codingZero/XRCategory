//
//  NSString+XRCategory.m
//  XRCategoryDemo
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import "NSString+XRCategory.h"

@implementation NSString (XRCategory)


+ (instancetype)createWithString:(NSString *)str :(void (^)(NSString *))block{
    NSString *obj = [[NSString alloc] initWithString:str];
    if (block) block(obj);
    return obj;
}

- (unichar (^)(NSUInteger))charAtIndex {
    return ^(NSUInteger index){
        return [self characterAtIndex:index];
    };
}

- (NSString *(^)(NSUInteger))subStrFromIndex {
    return ^(NSUInteger index){
        return [self substringFromIndex:index];
    };
}

- (NSString *(^)(NSUInteger))subStrToIndex {
    return ^(NSUInteger index){
        return [self substringToIndex:index];
    };
}

- (NSString *(^)(NSRange))subStrWithRange {
    return ^(NSRange range){
        return [self substringWithRange:range];
    };
}

- (BOOL (^)(NSString *))isEqualToString{
    return ^(NSString *str){
        return [self isEqualToString:str];
    };
}

- (NSComparisonResult (^)(NSString *))compare{
    return ^(NSString *str){
        return [self compare:str];
    };
}

- (NSRange (^)(NSString *))rangeOfString {
    return ^(NSString *str){
        return [self rangeOfString:str];
    };
}

- (BOOL (^)(NSString *))hasPrefix{
    return ^(NSString *str){
        return [self hasPrefix:str];
    };
}

- (BOOL (^)(NSString *))hasSuffix{
    return ^(NSString *str){
        return [self hasSuffix:str];
    };
}

- (BOOL (^)(NSString *))containsString{
    return ^(NSString *str){
        return [self containsString:str];
    };
}

- (NSString *(^)(NSString *))stringByAppendStr {
    return ^(NSString *str){
        return [self stringByAppendingString:str];
    };
}

- (NSData *(^)(NSStringEncoding))dataUsingEncoding {
    return ^(NSStringEncoding encoding) {
        return [self dataUsingEncoding:encoding];
    };
}

- (const char *(^)(NSStringEncoding))cStringUsingEncoding {
    return ^(NSStringEncoding encoding) {
        return [self cStringUsingEncoding:encoding];
    };
}

- (NSArray *(^)(NSString *))componentSeparatByStr {
    return ^(NSString *str) {
        return [self componentsSeparatedByString:str];
    };
}

- (NSString *(^)(NSString *, NSString *))stringByReplaceStringWithStr {
    return ^(NSString *target, NSString *replacement) {
        return [self stringByReplacingOccurrencesOfString:target withString:replacement];
    };
}


- (NSString *(^)(NSRange, NSString *))stringByReplaceCharInRangeWithStr {
    return ^(NSRange range, NSString *replacement) {
        return [self stringByReplacingCharactersInRange:range withString:replacement];
    };
}


- (BOOL (^)(NSString *, BOOL, NSStringEncoding, NSError **))writeToFileAtomical {
    return ^(NSString *path, BOOL b, NSStringEncoding encoding, NSError **error){
        return [self writeToFile:path atomically:b encoding:encoding error:error];
    };
}


- (BOOL (^)(NSURL *, BOOL, NSStringEncoding, NSError **)) writeToURLAtomical{
    return ^(NSURL *url, BOOL b, NSStringEncoding encoding, NSError **error){
        return [self writeToURL:url atomically:b encoding:encoding error:error];
    };
}

@end


@implementation NSMutableString (XRCategory)


+ (instancetype)create:(void (^)(NSMutableString *))block{
    NSMutableString *obj = [[NSMutableString alloc] init];
    if (block) block(obj);
    return obj;
}

+(instancetype)createWithString:(NSString *)str :(void (^)(NSMutableString *))block {
    NSMutableString *obj = [[NSMutableString alloc] initWithString:str];
    if (block) block(obj);
    return obj;
}

- (NSMutableString *(^)(NSRange, NSString *))replaceCharInRange {
    return ^(NSRange range, NSString *str) {
        [self replaceCharactersInRange:range withString:str];
        return self;
    };
}

- (NSMutableString *(^)(NSString *, NSUInteger))insertStrAtIndex {
    return ^(NSString *str, NSUInteger index) {
        [self insertString:str atIndex:index];
        return self;
    };
}

- (NSMutableString *(^)(NSRange))deleteCharInRange {
    return ^(NSRange range) {
        [self deleteCharactersInRange:range];
        return self;
    };
}

- (NSMutableString *(^)(NSString *))appendStr {
    return ^(NSString *str) {
        [self appendString:str];
        return self;
    };
}

- (NSMutableString *(^)(NSString *))setString {
    return ^( NSString *str) {
        [self setString:str];
        return self;
    };
}


@end
