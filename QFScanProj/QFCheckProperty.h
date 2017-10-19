//
//  QFCheckProperty.h
//  QFScanProj
//
//  Created by dqf on 2017/10/19.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, NSPropertyType) {
    NSPropertyTypeUnknow,
    NSPropertyTypeAssign,
    NSPropertyTypeStrong,
    NSPropertyTypeWeak,
    NSPropertyTypeCopy,
    NSPropertyTypeRetain
};

@interface QFCheckProperty : NSObject

+ (QFCheckProperty *)share;
- (BOOL)containsProperty:(NSString *)aString;
- (BOOL)containsNonatomic:(NSString *)aString;
- (NSPropertyType)checkPropertyType:(NSString *)aString;
- (NSString *)checkProperty:(NSString *)aString;
- (BOOL)matchingProperty:(NSString *)aString allType:(BOOL)yn;

@end
