//
//  ViewController+NSLog.h
//  Category&Extension
//
//  Created by 董诗磊 on 2017/4/2.
//  Copyright © 2017年 董诗磊. All rights reserved.
//

#import "ViewController.h"

#import <objc/runtime.h>


/**
 类别有个特征就是后边的括号里有个名称
 */
@interface ViewController (NSLog)

//在没有使用runtim建立关联引用建立的字符串
@property (nonatomic ,copy) NSString * dsl;

////先添加一个方法
- (void)printStr:(NSString *)str;

@end
