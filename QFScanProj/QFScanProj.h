//
//  QFScanProj.h
//  QFScanProj
//
//  Created by dqf on 2017/9/6.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "QFFileHelper.h"
#import "QFFilter.h"
#import "QFCheckFunc.h"
#import "QFCheckProperty.h"

#define KFolderPath @"/Users/issuser/Desktop/WorkPlace/Test-MiguMusic-iOS/MGMobileMusic"

@interface QFScanProj : NSObject

+ (void)scanFileType:(NSString *)path finish:(void(^)(NSArray *allFileType))callback;

+ (void)scanFunc:(NSString *)path finish:(void(^)(NSArray *allFunc))callback;


+ (void)scanPng:(NSString *)path finish:(void(^)(NSArray *allPng))callback;
+ (void)scanPNG:(NSString *)path finish:(void(^)(NSArray *allPNG))callback;

+ (void)scanJpg:(NSString *)path finish:(void(^)(NSArray *allJpg))callback;
+ (void)scanJPG:(NSString *)path finish:(void(^)(NSArray *allJPG))callback;

+ (void)scanJpeg:(NSString *)path finish:(void(^)(NSArray *allJpeg))callback;
+ (void)scanJPEG:(NSString *)path finish:(void(^)(NSArray *allJPEG))callback;


+ (void)scanGif:(NSString *)path finish:(void(^)(NSArray *allGif))callback;
+ (void)scanGIF:(NSString *)path finish:(void(^)(NSArray *allGIF))callback;

+ (void)scanSvg:(NSString *)path finish:(void(^)(NSArray *allSvg))callback;
+ (void)scanSVG:(NSString *)path finish:(void(^)(NSArray *allSVG))callback;

+ (void)scanPdf:(NSString *)path finish:(void(^)(NSArray *allPdf))callback;
+ (void)scanPDF:(NSString *)path finish:(void(^)(NSArray *allPDF))callback;


+ (void)scanWebp:(NSString *)path finish:(void(^)(NSArray *allWebp))callback;


+ (void)scan1X:(NSString *)path finish:(void(^)(NSArray *all1X))callback;
+ (void)scan2X:(NSString *)path finish:(void(^)(NSArray *all2X))callback;
+ (void)scan3X:(NSString *)path finish:(void(^)(NSArray *all3X))callback;

+ (void)scanUseX:(NSString *)path finish:(void(^)(NSArray *allUseX))callback;
+ (void)scanUsex:(NSString *)path finish:(void(^)(NSArray *allUsex))callback;


+ (void)scanUnusedImages:(NSString *)path finish:(void(^)(NSArray *allUnusedImages))callback;

+ (void)scanPlist:(NSString *)path finish:(void(^)(NSArray *allPlist))callback;


+ (void)scanMP3:(NSString *)path finish:(void(^)(NSArray *allMP3))callback;
+ (void)scanMP4:(NSString *)path finish:(void(^)(NSArray *allMP4))callback;
+ (void)scanWov:(NSString *)path finish:(void(^)(NSArray *allWov))callback;
+ (void)scanFlv:(NSString *)path finish:(void(^)(NSArray *allFlv))callback;

//扫描类属性定义是否合法
+ (void)scanIllegalProperty:(NSString *)path finish:(void(^)(NSArray *allProperty))callback;
+ (void)checkContainsNonatomic:(NSString *)lineStr finish:(void(^)(BOOL contains))callback;
+ (void)checkPropertyType:(NSString *)lineStr finish:(void(^)(NSPropertyType type))callback;
+ (void)checkProperty:(NSString *)lineStr finish:(void(^)(NSString *property))callback;
//扫描枚举定义是否合规
+ (void)scanEnum:(NSString *)path finish:(void(^)(NSArray *allEnum))callback;
//扫描block的使用是否合规
//扫描宏定义是否合规
+ (void)scanMacroDefine:(NSString *)path finish:(void(^)(NSArray *allDefine))callback;
//扫描颜色设置是否使用了统一的方法
+ (void)scanColorDefine:(NSString *)path finish:(void(^)(NSArray *allColorDefine))callback;
//扫描跳转是否使用了统一的方法
//扫描是否使用了私有函数
//扫描所有网络接口是否有保留字段
+ (void)scanNetInterface:(NSString *)path filterArr:(NSArray *)filterArr finish:(void(^)(NSArray *allNetInterface))callback;
//扫描是否使用了QFSafeUtil

@end

