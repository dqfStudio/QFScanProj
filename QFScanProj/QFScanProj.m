//
//  QFScanProj.m
//  QFScanProj
//
//  Created by dqf on 2017/9/6.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "QFScanProj.h"

@implementation QFScanProj

+ (void)scanFileType:(NSString *)path finish:(void(^)(NSArray *allFileType))callback {
    NSMutableArray *mutableArr = [NSMutableArray new];
    [QFFileHelper folderPath2:path block:^(NSString *fileName) {
        NSString *string = [fileName pathExtension];
        if (string.length > 0 && ![mutableArr containsObject:[fileName pathExtension]]) {
            [mutableArr addObject:[fileName pathExtension]];
        }
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanFunc:(NSString *)path finish:(void(^)(NSArray *allFunc))callback {
    NSMutableArray *mutableArr = [NSMutableArray new];
    [QFFileHelper folderPath1:path filterArr:[[QFFilter share] sourceMFilter] block:^(NSString *path) {
        NSArray *arr = [[QFCheckFunc share] checkFunc:path];
        if (arr && arr.count > 0) {
            [mutableArr addObjectsFromArray:arr];
        }
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanPng:(NSString *)path finish:(void(^)(NSArray *allPng))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@".png" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanPNG:(NSString *)path finish:(void(^)(NSArray *allPNG))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@".PNG" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanJpg:(NSString *)path finish:(void(^)(NSArray *allJpg))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@".jpg" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanJPG:(NSString *)path finish:(void(^)(NSArray *allJPG))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@".JPG" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanJpeg:(NSString *)path finish:(void(^)(NSArray *allJpeg))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@".jpeg" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanJPEG:(NSString *)path finish:(void(^)(NSArray *allJPEG))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@".JPEG" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanGif:(NSString *)path finish:(void(^)(NSArray *allGif))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@".git" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanGIF:(NSString *)path finish:(void(^)(NSArray *allGIF))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@".GIF" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanSvg:(NSString *)path finish:(void(^)(NSArray *allSvg))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@".svg" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanSVG:(NSString *)path finish:(void(^)(NSArray *allSVG))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@".SVG" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanPdf:(NSString *)path finish:(void(^)(NSArray *allPdf))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@".pdf" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanPDF:(NSString *)path finish:(void(^)(NSArray *allPDF))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@".PDF" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanWebp:(NSString *)path finish:(void(^)(NSArray *allWebp))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@".Webp" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scan1X:(NSString *)path finish:(void(^)(NSArray *all1X))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@"@1X.png" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    [QFFileHelper folderPath1:path filter:@"@1X.jpg" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scan2X:(NSString *)path finish:(void(^)(NSArray *all2X))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@"@2X.png" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    [QFFileHelper folderPath1:path filter:@"@2X.jpg" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scan3X:(NSString *)path finish:(void(^)(NSArray *all3X))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@"@3X.png" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    [QFFileHelper folderPath1:path filter:@"@3X.jpg" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanUseX:(NSString *)path finish:(void(^)(NSArray *allUseX))callback {

    NSMutableArray *mutableArr = [NSMutableArray array];
    
    [QFFileHelper folderPath1:path filter:@".h" block:^(NSString *path) {
        
        __block BOOL contain = NO;
        
        [QFFileHelper file:path block:^(NSString *lineStr) {
            
            NSArray *filterArr = @[@"@1X.png", @"@2X.png", @"@3X.png", @"@1X.jpg", @"@2X.jpg", @"@3X.jpg"];
            if (lineStr.containsStrArr(filterArr)) {
                contain = YES;
            }
        }];
        if (contain) {
            //不包含
            [mutableArr addObject:path];
        }
    }];
    [QFFileHelper folderPath1:path filter:@".m" block:^(NSString *path) {
        
        __block BOOL contain = NO;
        
        [QFFileHelper file:path block:^(NSString *lineStr) {
            
            NSArray *filterArr = @[@"@1X.png", @"@2X.png", @"@3X.png", @"@1X.jpg", @"@2X.jpg", @"@3X.jpg"];
            if (lineStr.containsStrArr(filterArr)) {
                contain = YES;
            }
        }];
        if (contain) {
            //不包含
            [mutableArr addObject:path];
        }
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanUsex:(NSString *)path finish:(void(^)(NSArray *allUsex))callback {

    NSMutableArray *mutableArr = [NSMutableArray array];
    
    [QFFileHelper folderPath1:path filter:@".h" block:^(NSString *path) {
        
        __block BOOL contain = NO;
        
        [QFFileHelper file:path block:^(NSString *lineStr) {
            
            NSArray *filterArr = @[@"@1x.png", @"@2x.png", @"@3x.png", @"@1x.jpg", @"@2x.jpg", @"@3x.jpg"];
            if (lineStr.containsStrArr(filterArr)) {
                contain = YES;
            }
        }];
        if (contain) {
            //不包含
            [mutableArr addObject:path];
        }
    }];
    [QFFileHelper folderPath1:path filter:@".m" block:^(NSString *path) {
        
        __block BOOL contain = NO;
        
        [QFFileHelper file:path block:^(NSString *lineStr) {
            
            NSArray *filterArr = @[@"@1x.png", @"@2x.png", @"@3x.png", @"@1x.jpg", @"@2x.jpg", @"@3x.jpg"];
            if (lineStr.containsStrArr(filterArr)) {
                contain = YES;
            }
        }];
        if (contain) {
            //不包含
            [mutableArr addObject:path];
        }
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanUnusedImages:(NSString *)path finish:(void(^)(NSArray *allUnusedImages))callback {

    NSMutableArray *mutableArr1 = [NSMutableArray array];
    NSMutableArray *mutableArr2 = [NSMutableArray array];
    NSMutableArray *allFilterArr = [NSMutableArray array];
    
    [QFFileHelper folderPath1:path filterArr:@[@".png", @".jgp"] block:^(NSString *path) {
        [mutableArr1 addObject:path];
    }];
    
    [QFFileHelper folderPath1:path filterArr:@[@".h", @".m", @".mm", @".c", @".cpp", @".xib", @".json"] block:^(NSString *path) {
        [allFilterArr addObject:path];
    }];
    
    NSUInteger count = allFilterArr.count;
    
    for (int i=0; i<count; i++) {
        
        NSLog(@"%lu/%d", count,i);
        NSString *path = allFilterArr[i];
        NSString *contentStr = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
        
        for (NSString *imgStr in mutableArr1) {
            
            NSString *tmpImgStr = [imgStr lastPathComponent].replace(@"@1x", @"").replace(@"@2x", @"").replace(@"@3x", @"");
            NSString *str1 = nil;
            NSString *str2 = nil;
            NSString *str3 = nil;
            
            if ([[path lastPathComponent] hasSuffix:@".xib"] || [[path lastPathComponent] hasSuffix:@".json"]) {
                
                str1 = NSString.append(@"\"").append([imgStr lastPathComponent]).append(@"\"");
                str2 = NSString.append(@"\"").append(tmpImgStr).append(@"\"");
                
                if ([imgStr hasSuffix:@"png"]) {
                    str3 = NSString.append(@"\"").append(tmpImgStr).append(@"\"").replace(@".png", @"");
                }else if ([imgStr hasSuffix:@"jpg"]) {
                    str3 = NSString.append(@"\"").append(tmpImgStr).append(@"\"").replace(@".jpg", @"");
                }
                
            }else {
                
                str1 = NSString.append(@"UIImage imageNamed:@\"").append([imgStr lastPathComponent]).append(@"\"");
                str2 = NSString.append(@"UIImage imageNamed:@\"").append(tmpImgStr).append(@"\"");
                
                if ([imgStr hasSuffix:@"png"]) {
                    str3 = NSString.append(@"UIImage imageNamed:@\"").append(tmpImgStr).append(@"\"").replace(@".png", @"");
                }else if ([imgStr hasSuffix:@"jpg"]) {
                    str3 = NSString.append(@"UIImage imageNamed:@\"").append(tmpImgStr).append(@"\"").replace(@".jpg", @"");
                }
                
            }
            
            BOOL containsObject = NO;
            if (str1 && [contentStr containsString:str1]) {
                containsObject = YES;
            }else if (str2 && [contentStr containsString:str2]) {
                containsObject = YES;
            }else if (str3 && [contentStr containsString:str3]) {
                containsObject = YES;
            }
            
            if (containsObject && ![mutableArr2 containsObject:imgStr]) {
                [mutableArr2 addObject:imgStr];
            }
        }
    }
    
    for (NSString *imgStr in mutableArr2) {
        if ([mutableArr1 containsObject:imgStr]) {
            [mutableArr1 removeObject:imgStr];
        }
    }
    
    if (callback) {
        callback(mutableArr1);
    }
}

+ (void)scanPlist:(NSString *)path finish:(void(^)(NSArray *allPlist))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@".plist" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanMP3:(NSString *)path finish:(void(^)(NSArray *allMP3))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@".mp3" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanMP4:(NSString *)path finish:(void(^)(NSArray *allMP4))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@".mp4" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanWov:(NSString *)path finish:(void(^)(NSArray *allWov))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@".wov" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanFlv:(NSString *)path finish:(void(^)(NSArray *allFlv))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filter:@".flv" block:^(NSString *path) {
        [mutableArr addObject:path];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanIllegalProperty:(NSString *)path finish:(void(^)(NSArray *allProperty))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filterArr:@[@".h", @".m"] block:^(NSString *path) {
        [QFFileHelper file:path block:^(NSString *lineStr) {
            if (lineStr) {
                BOOL contain = [[QFCheckProperty share] containsProperty:lineStr];
                if (contain) {
                    if (![[QFCheckProperty share] matchingProperty:lineStr allType:NO]) {
                        [mutableArr addObject:[lineStr mutableCopy]];
                    }
                }
            }
        }];
    }];
    if (callback) {
        callback(mutableArr);
    }
}
+ (void)checkContainsNonatomic:(NSString *)lineStr finish:(void(^)(BOOL contains))callback {
    BOOL nonatomic = [[QFCheckProperty share] containsNonatomic:lineStr];
    if (callback) {
        callback(nonatomic);
    }
}
+ (void)checkPropertyType:(NSString *)lineStr finish:(void(^)(NSPropertyType type))callback {
    NSPropertyType type = [[QFCheckProperty share] checkPropertyType:lineStr];
    if (callback) {
        callback(type);
    }
}
+ (void)checkProperty:(NSString *)lineStr finish:(void(^)(NSString *property))callback {
    NSString *property = [[QFCheckProperty share] checkProperty:lineStr];
    if (callback) {
        callback(property);
    }
}

+ (void)scanEnum:(NSString *)path finish:(void(^)(NSArray *allEnum))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filterArr:@[@".h", @".m"] block:^(NSString *path) {
        [QFFileHelper file:path block:^(NSString *lineStr) {
            if (lineStr) {
                NSString *newlineStr = [lineStr stringByReplacingOccurrencesOfString:@" " withString:@""];
                if (newlineStr.length < 7) return;
                NSString *subString = [newlineStr substringToIndex:7];
                if ([subString isEqualToString:@"typedef"]) {
                    if ([newlineStr containsString:@"typedef"] && [newlineStr containsString:@"NS_ENUM"] && [newlineStr containsString:@"("] && [newlineStr containsString:@")"]) {
                        NSArray *arr = newlineStr.componentsBySetString(@"()");
                        if (arr && arr.count >= 2) {
                            subString = arr[1];
                            if (subString.length > 0) {
                                arr = subString.componentsBySetString(@",");
                                if (arr && arr.count >= 2) {
                                    subString = arr[1];
                                    if (subString && subString.length > 0) {
                                        subString = [subString substringToIndex:1];
                                        if (subString && ![subString isEqualToString:@"T"]) {
                                            [mutableArr addObject:lineStr];
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

+ (void)scanDefine:(NSString *)path finish:(void(^)(NSArray *allDefine))callback {
    NSMutableArray *mutableArr = [NSMutableArray array];
    [QFFileHelper folderPath1:path filterArr:@[@".h", @".m"] block:^(NSString *path) {
        [QFFileHelper file:path block:^(NSString *lineStr) {
            if (lineStr) {
                NSString *newlineStr = [lineStr stringByReplacingOccurrencesOfString:@" " withString:@""];
                if (newlineStr.length < 8) return;
                NSString *subString = [newlineStr substringToIndex:7];
                if ([subString isEqualToString:@"#define"]) {
                    subString = [lineStr stringByReplacingOccurrencesOfString:@"#define" withString:@""];
                    NSArray *arr = subString.componentsBySetString(@" ");
                    if (arr && arr.count >= 2) {
                        subString = arr[0];
                        if (subString.length > 0) {
                            subString = [subString substringToIndex:1];
                            if (subString && ![subString isEqualToString:@"K"]) {
                                [mutableArr addObject:lineStr];
                            }
                        }
                    }
                }
            }
        }];
    }];
    if (callback) {
        callback(mutableArr);
    }
}

@end

