//
//  QFFilter.m
//  QFScanProj
//
//  Created by dqf on 2017/10/18.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "QFFilter.h"

@implementation QFFilter

+ (QFFilter *)share {
    static dispatch_once_t predicate;
    static QFFilter *filter;
    dispatch_once(&predicate, ^{
        filter = [[self alloc] init];
    });
    return filter;
}

- (NSArray *)sourceHFilter {
    return @[@".h", @".hpp"];
}

- (NSArray *)sourceMFilter {
    return @[@".m", @".mm", @".c", @".cpp"];
}

- (NSArray *)uiFilter {
    return @[@".xib", @".storyboard"];
}

- (NSArray *)resourceFilter {
    return @[@".json", @".plist", @".strings", @".geojson", @".apns", @".gpx", @".rtf", @".txt", @".stringsdict"];
}

- (NSArray *)audioFilter {
    return @[@".mp3"];
}

- (NSArray *)videoFilter {
    return @[@".mp4", @".wov", @".flv"];
}

- (NSArray *)otherFilter {
    return @[@".pch", @".s", @".xcconfig", @".md", @".sh"];
}

@end
