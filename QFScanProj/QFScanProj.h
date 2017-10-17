//
//  QFScanProj.h
//  QFScanProj
//
//  Created by dqf on 2017/9/6.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "QFFileHelper.h"

@interface QFScanProj : NSObject

+ (void)scanFunc:(NSString *)path finish:(void(^)(NSArray *allFunc))callback;

@end
