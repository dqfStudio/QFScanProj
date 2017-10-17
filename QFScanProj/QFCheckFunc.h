//
//  QFCheckFunc.h
//  AddLogToFunc
//
//  Created by dqf on 2017/10/17.
//  Copyright © 2017年 DNE Technology Co.,Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QFCheckFunc : NSObject

+ (QFCheckFunc *)share;
- (NSArray *)checkFunc:(NSString *)path;

@end
