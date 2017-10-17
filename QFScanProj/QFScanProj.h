//
//  QFScanProj.h
//  QFScanProj
//
//  Created by dqf on 2017/9/6.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "QFFileHelper.h"

#define KFolderPath @"/Users/issuser/Desktop/WorkPlace/Test-MiguMusic-iOS/MGMobileMusic"

@interface QFScanProj : NSObject

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

@end

