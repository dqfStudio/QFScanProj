//
//  QFFilter.h
//  QFScanProj
//
//  Created by dqf on 2017/10/18.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QFFilter : NSObject

+ (QFFilter *)share;

- (NSArray *)sourceHFilter;

- (NSArray *)sourceMFilter;

- (NSArray *)uiFilter;

- (NSArray *)resourceFilter;

- (NSArray *)audioFilter;

- (NSArray *)videoFilter;

- (NSArray *)otherFilter;

@end

