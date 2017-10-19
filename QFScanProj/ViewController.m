//
//  ViewController.m
//  QFScanProj
//
//  Created by dqf on 2017/9/6.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "ViewController.h"
#import "QFScanProj.h"

#define KSFS  @"1111"
#define WER  @"2222"

@interface ViewController ()
@property  BOOL yn0;
@property (nonatomic) BOOL yn1;
@property (nonatomic, assign) BOOL yn2;
@property (nonatomic, assign, readonly) BOOL yn3;
@property (nonatomic, strong) NSArray *arr1;
@property (nonatomic) NSArray *arr2;
@property (nonatomic, retain) NSArray *arr3;
@property (nonatomic, weak) NSArray *arr4;
@property (nonatomic, strong) NSArray<NSString *> *arr5;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    NSString *string = @"/Users/issuser/Documents/GitHub/QFScanProj/QFScanProj";
    NSString *string = @"/Users/issuser/Desktop/WorkPlace/MiguMusic-iOS";
//    [QFScanProj scanFunc:string finish:^(NSArray *allFunc) {
//        NSLog(@"%@", allFunc);
//    }];
//    [QFScanProj scanIllegalProperty:string finish:^(NSArray *allProperty) {
//        NSLog(@"%@", allProperty);
//    }];

//    [QFScanProj scanFileType:string finish:^(NSArray *allFileType) {
//        NSLog(@"%@", allFileType);
//    }];
    
//    [QFScanProj scanDefine:string finish:^(NSArray *scanDefine) {
//        NSLog(@"%@", scanDefine);
//    }];
    
    [UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1.0];
    
//    [QFScanProj scanEnum:string finish:^(NSArray *allEnum) {
//        NSLog(@"%@", allEnum);
//    }];
    
    [QFScanProj scanColorDefine:string finish:^(NSArray *allColorDefine) {
        NSLog(@"%@", allColorDefine);
    }];

    
//    + (void)scanColorDefine:(NSString *)path finish:(void(^)(NSArray *allColorDefine))callback
}

@end
