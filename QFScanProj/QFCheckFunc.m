//
//  QFCheckFunc.m
//  AddLogToFunc
//
//  Created by dqf on 2017/10/17.
//  Copyright © 2017年 DNE Technology Co.,Ltd. All rights reserved.
//

#import "QFCheckFunc.h"

@interface QFCheckFunc ()
@property (nonatomic, assign) BOOL keepOn;
@property (nonatomic, strong) NSMutableArray  *allCodeArr;
@property (nonatomic, strong) NSMutableString *mutableStr;
@end

@implementation QFCheckFunc

- (NSMutableArray *)allCodeArr {
    if (!_allCodeArr) {
        _allCodeArr = [NSMutableArray arrayWithCapacity:1];
    }
    return _allCodeArr;
}

- (NSMutableString *)mutableStr {
    if (!_mutableStr) {
        _mutableStr = [[NSMutableString alloc] init];
    }
    return _mutableStr;
}

+ (QFCheckFunc *)share {
    static dispatch_once_t predicate;
    static QFCheckFunc *checkFunc;
    dispatch_once(&predicate, ^{
        checkFunc = [[self alloc] init];
    });
    return checkFunc;
}

- (NSArray *)checkFunc:(NSString *)path {
    const char *filePath = [path UTF8String];
    FILE *fp1;//定义文件流指针，用于打开读取的文件
    char textStr[10241];//定义一个字符串数组，用于存储读取的字符
    fp1 = fopen(filePath,"r");//只读方式打开文件a.txt
    
    //初始化参数
    [self.mutableStr setString:@""];
    if (self.allCodeArr.count > 0) [self.allCodeArr removeAllObjects];
    _keepOn = NO;
    
    while(fgets(textStr,10240,fp1)!=NULL) {//逐行读取fp1所指向文件中的内容到text中
        [self findMethod:textStr];
    }
    
    fclose(fp1);//关闭文件a.txt，有打开就要有关闭
    return self.allCodeArr;
}

- (void)findMethod:(char *)text {
    //1、获取一行代码
    //2、除开空格第一个字符是“-”或“+”，代表这是一个方法的开始
    //3、包含“(”和“)”
    //4、如果方法名字换行，
    //5、函数以"{"开始，"}"结尾
    
    //获取一行代码
    NSString *codeStr = [NSString stringWithCString:text encoding:NSUTF8StringEncoding];
    //除去空格字符串
    NSString *noSpaceStr = [[codeStr mutableCopy] stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    //判断第一个字符是“-”或“+”
    NSString *firstStr = [noSpaceStr substringToIndex:1];
    
    if (!_keepOn) {
        
        if ([firstStr isEqualToString:@"-"] || [firstStr isEqualToString:@"+"]) {
            
            //判断是否包含“(”和“)”
            if ([noSpaceStr containsString:@"("] && [noSpaceStr containsString:@")"]) {
                
                //判断是否包含“{”
                if ([noSpaceStr containsString:@"{"]) {
                    
                    //获取"{"在整个文件中的坐标
                    NSRange range = [codeStr rangeOfString:@"{"];
                    //找出函数方法
                    NSString *replaceStr = [codeStr substringToIndex:range.location];
                    replaceStr = [self filter:replaceStr];
                    [self.allCodeArr addObject:replaceStr];
                    
                } else {
                    [self.mutableStr appendString:codeStr];
                    _keepOn = YES;
                }
                
                //换下一行
                return;
                
            }
            
        }
        
    }else {
        
        if ([firstStr isEqualToString:@"-"] || [firstStr isEqualToString:@"+"]) {
            
            //判断是否包含“(”和“)”
            if ([noSpaceStr containsString:@"("] && [noSpaceStr containsString:@")"]) {
                
                //判断是否包含“{”
                if ([noSpaceStr containsString:@"{"]) {
                    
                    //获取"{"在整个文件中的坐标
                    NSRange range = [codeStr rangeOfString:@"{"];
                    //找出函数方法
                    NSString *replaceStr = [codeStr substringToIndex:range.location];
                    replaceStr = [self filter:replaceStr];
                    [self.allCodeArr addObject:replaceStr];
                    
                    [self.mutableStr setString:@""];
                    
                    _keepOn = NO;
                    
                }else {
                    [self.mutableStr setString:codeStr];
                }
                
                //换下一行
                return;
                
            }
            
        }
        
        if ([codeStr containsString:@"{"]) {
            
            //获取"{"在整个文件中的坐标
            NSRange range = [codeStr rangeOfString:@"{"];
            //找出函数方法
            NSString *replaceStr = [codeStr substringToIndex:range.location];
            replaceStr = [self filter:replaceStr];
            [self.mutableStr appendString:replaceStr];
            
            [self.allCodeArr addObject:[self.mutableStr mutableCopy]];
            [self.mutableStr setString:@""];
            
            _keepOn = NO;
            
        }else {
            [self.mutableStr appendString:codeStr];
        }
        
        //换下一行
        return;
        
    }
    
}

- (NSString *)filter:(NSString *)str {
    if (str && str.length > 0) {
        for (int i=1; i<=str.length; i++) {
            NSRange range = NSMakeRange(str.length-i, 1);
            NSString *tmpStr = [str substringWithRange:range];
            if (![tmpStr isEqualToString:@" "]) {
                str = [str substringToIndex:str.length-i+1];
                break;
            }
        }
    }
    return str;
}

@end
