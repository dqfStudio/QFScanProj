//
//  ViewController.m
//  QFScanProj
//
//  Created by dqf on 2017/9/6.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "ViewController.h"
#import "QFScanProj.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *string = @"/Users/issuser/Documents/GitHub/QFScanProj/QFScanProj";
    [QFScanProj scanFunc:string finish:^(NSArray *allFunc) {
        NSLog(@"%@", allFunc);
    }];
}

@end
