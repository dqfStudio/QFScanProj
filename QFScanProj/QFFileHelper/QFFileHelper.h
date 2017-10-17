//
//  QFFileHelper.h
//  QFReadFile
//
//  Created by dqf on 2017/8/18.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "NSStringUtil.h"

@interface QFFileHelper : NSObject

+ (NSString *)homePath;

+ (NSString *)timePath;

+ (void)folderPath1:(NSString *)path block:(void(^)(NSString *path))callback;
+ (void)folderPath2:(NSString *)path block:(void(^)(NSString *fileName))callback;

+ (void)folderPath1:(NSString *)path filter:(NSString *)filter block:(void(^)(NSString *path))callback;
+ (void)folderPath2:(NSString *)path filter:(NSString *)filter block:(void(^)(NSString *fileName))callback;

+ (void)folderPath1:(NSString *)path filterArr:(NSArray *)filterArr block:(void(^)(NSString *path))callback;
+ (void)folderPath2:(NSString *)path filterArr:(NSArray *)filterArr block:(void(^)(NSString *fileName))callback;

+ (void)file:(NSString *)path block:(void(^)(NSString *lineStr))callback;

+ (void)file:(NSString *)path append:(NSString *)content;

+ (void)file:(NSString *)path append:(NSString *)content wrap:(BOOL)isWrap;

@end
