//
//  QFCheckProperty.m
//  QFScanProj
//
//  Created by dqf on 2017/10/19.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "QFCheckProperty.h"
#import "NSString+QFUtil.h"

@interface QFCheckProperty ()
@property (nonatomic, strong) NSArray *unObjcTypeArr;
@end

@implementation QFCheckProperty

- (NSArray *)unObjcTypeArr {
    if (!_unObjcTypeArr) {
        _unObjcTypeArr = @[@"int", @"NSInteger", @"NSUInteger", @"float", @"double", @"char", @"long", @"long long", @"CGFloat", @"CGSize", @"CGRect", @"NSRange", @"NSTimeInterval"];
    }
    return _unObjcTypeArr;
}

+ (QFCheckProperty *)share {
    static dispatch_once_t predicate;
    static QFCheckProperty *checkProperty;
    dispatch_once(&predicate, ^{
        checkProperty = [[self alloc] init];
    });
    return checkProperty;
}

- (BOOL)containsProperty:(NSString *)aString {
    if (aString) {
        aString = [aString stringByReplacingOccurrencesOfString:@" " withString:@""];
        if (aString.length >= 10) {
            if ([[aString substringToIndex:10] isEqualToString:@"@property("] && [aString containsString:@")"]) {
                return YES;
            }
        }
    }
    return NO;
}

- (BOOL)containsNonatomic:(NSString *)aString {
    if ([aString containsString:@"nonatomic"]) {
        return YES;
    }
    return NO;
}

- (NSPropertyType)checkPropertyType:(NSString *)aString {
    aString = [aString stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSArray *arr = aString.componentsBySetString(@"()");
    aString = arr[1];
    
    if ([aString containsString:@"assign"]) {
        return NSPropertyTypeAssign;
    }else if ([aString containsString:@"strong"]) {
        return NSPropertyTypeStrong;
    }else if ([aString containsString:@"weak"]) {
        return NSPropertyTypeWeak;
    }else if ([aString containsString:@"retain"]) {
        return NSPropertyTypeRetain;
    }else if ([aString containsString:@"copy"]) {
        return NSPropertyTypeCopy;
    }else {
        return NSPropertyTypeUnknow;
    }
}

- (NSString *)checkProperty:(NSString *)aString {
    if ([aString containsString:@"<"] && [aString containsString:@">"]) {
        NSArray *arr = aString.componentsBySetString(@")<");
        if (arr && arr.count >= 3) {
            return arr[1];
        }
    }else {
        if ([aString containsString:@"*"]) {
            NSArray *arr = aString.componentsBySetString(@")*");
            if (arr && arr.count >= 3) {
                return arr[1];
            }
        }else {
            NSArray *arr = aString.componentsBySetString(@")");
            if (arr && arr.count >= 2) {
                NSString *string = arr[1];
                NSArray *tmpArr = string.componentsBySetString(@" ");
                if (tmpArr) {
                    return tmpArr[0];
                }
            }
        }
    }
    return nil;
}

//- (BOOL)matchingProperty:(NSString *)aString allType:(BOOL)yn {
//    //此方法逻辑还不完善
//    NSPropertyType type = [self checkPropertyType:aString];
//    if (!yn) {
//        if (type == NSPropertyTypeUnknow) return YES;
//    }
//
//    if ([aString containsString:@"<"] && [aString containsString:@">"]) {
//        if (type == NSPropertyTypeWeak || type == NSPropertyTypeStrong || type == NSPropertyTypeRetain || type == NSPropertyTypeCopy) return YES;
//        return NO;
//    }else {
//        if ([aString containsString:@"*"]) {
//            if (type == NSPropertyTypeStrong || type == NSPropertyTypeRetain || type == NSPropertyTypeCopy || type == NSPropertyTypeWeak) return YES;
//            return NO;
//        }else {
//            NSString *tmpString = [self checkProperty:aString];
//            if ([tmpString isEqualToString:@"id"]) {
//                return YES;
//            }else {
//                if (type == NSPropertyTypeAssign) return YES;
//            }
//        }
//    }
//    return NO;
//}

- (BOOL)matchingProperty:(NSString *)aString allType:(BOOL)yn {
    //此方法逻辑还不完善
    NSString *propertyString = [self checkProperty:aString];
    NSPropertyType type = [self checkPropertyType:aString];
    if (!yn && type == NSPropertyTypeUnknow) return YES;
    
    if ([aString containsString:@"*"] || [propertyString isEqualToString:@"id"]) {
        if (type != NSPropertyTypeAssign) return YES;
    }else {
        if ([self.unObjcTypeArr containsObject:propertyString]) {
            if (type == NSPropertyTypeAssign) return YES;
        }else {
            if (type == NSPropertyTypeAssign || type == NSPropertyTypeCopy) return YES;
        }
    }
    return NO;
}

@end
