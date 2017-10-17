//
//  NSStringUtil.h
//  TestProj
//
//  Created by dqf on 2017/8/10.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Util)

+ (NSString *(^)(id))append;
- (NSString *(^)(id))append;

+ (NSString *(^)(NSString *, NSUInteger))appendString;
- (NSString *(^)(NSString *, NSUInteger))appendString;

- (NSString *(^)(NSString *, NSString *))replace;

+ (NSString *(^)(NSUInteger))space;
- (NSString *(^)(NSUInteger))space;

+ (NSString *(^)(NSUInteger))tab;
- (NSString *(^)(NSUInteger))tab;

+ (NSString *(^)(NSUInteger))wrap;
- (NSString *(^)(NSUInteger))wrap;

- (BOOL(^)(NSArray<NSString *> *))containsStrArr;

@end
