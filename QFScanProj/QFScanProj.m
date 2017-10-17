//
//  QFScanProj.m
//  QFScanProj
//
//  Created by dqf on 2017/9/6.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "QFScanProj.h"
#import "QFCheckFunc.h"

@implementation QFScanProj

+ (void)scanFunc:(NSString *)path finish:(void(^)(NSArray *allFunc))callback {
    NSMutableArray *allFunc = [NSMutableArray new];
    [QFFileHelper folderPath1:path filter:@".m" block:^(NSString *path) {
        NSArray *arr = [[QFCheckFunc share] checkFunc:path];
        if (arr && arr.count > 0) {
            [allFunc addObjectsFromArray:arr];
        }
    }];
    if (callback) {
        callback(allFunc);
    }
}

@end
