//
//  NSStringUtil.m
//  TestProj
//
//  Created by dqf on 2017/8/10.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "NSStringUtil.h"

@implementation NSString (Util)

+ (NSString *(^)(id))append {
    return ^NSString *(id obj) {
        return [NSString stringWithFormat:@"%@",obj];
    };
}

- (NSString *(^)(id))append {
    return ^NSString *(id obj) {
        return [NSString stringWithFormat:@"%@%@", self,obj];
    };
}

+ (NSString *(^)(NSString *, NSUInteger))appendString {
    return ^NSString *(NSString *org, NSUInteger count) {
        NSMutableString *mutableStr = [[NSMutableString alloc] init];
        for (int i=0; i<count; i++) {
            [mutableStr appendString:org];
        }
        return mutableStr;
    };
}

- (NSString *(^)(NSString *, NSUInteger))appendString {
    return ^NSString *(NSString *org, NSUInteger count) {
        NSMutableString *mutableStr = [[NSMutableString alloc] initWithString:self];
        for (int i=0; i<count; i++) {
            [mutableStr appendString:org];
        }
        return mutableStr;
    };
}

- (NSString *(^)(NSString *, NSString *))replace {
    return ^NSString *(NSString *org1, NSString *org2) {
        return [self stringByReplacingOccurrencesOfString:org1 withString:org2];
    };
}

//空格
+ (NSString *(^)(NSUInteger))space {
    return ^NSString *(NSUInteger count) {
        return self.appendString(@" ", count);
    };
}

- (NSString *(^)(NSUInteger))space {
    return ^NSString *(NSUInteger count) {
        return self.appendString(@" ", count);
    };
}

//tab
+ (NSString *(^)(NSUInteger))tab {
    return ^NSString *(NSUInteger count) {
        return self.appendString(@"\t", count);
    };
}

- (NSString *(^)(NSUInteger))tab {
    return ^NSString *(NSUInteger count) {
        return self.appendString(@"\t", count);
    };
}

//换行
+ (NSString *(^)(NSUInteger))wrap {
    return ^NSString *(NSUInteger count) {
        return self.appendString(@"\n", count);
    };
}

- (NSString *(^)(NSUInteger))wrap {
    return ^NSString *(NSUInteger count) {
        return self.appendString(@"\n", count);
    };
}

- (BOOL(^)(NSArray<NSString *> *))containsStrArr {
    return ^BOOL(NSArray *arr) {
        if (arr.count <= 0) return NO;
        BOOL contain = NO;
        for (NSString *str in arr) {
            if ([self containsString:str]) {
                contain = YES;
            }
        }
        return contain;
    };
}

@end
