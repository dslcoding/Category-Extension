//
//  ViewController+NSLog.m
//  Category&Extension
//
//  Created by 董诗磊 on 2017/4/2.
//  Copyright © 2017年 董诗磊. All rights reserved.
//

#import "ViewController+NSLog.h"

//enum {
//    OBJC_ASSOCIATION_ASSIGN = 0, //关联对象的属性是弱引用
//    
//    OBJC_ASSOCIATION_RETAIN_NONATOMIC = 1, //关联对象的属性是强引用并且关联对象不使用原子性
//    
//    OBJC_ASSOCIATION_COPY_NONATOMIC = 3, //关联对象的属性是copy并且关联对象不使用原子性
//    
//    OBJC_ASSOCIATION_RETAIN = 01401, //关联对象的属性是copy并且关联对象使用原子性
//    
//    OBJC_ASSOCIATION_COPY = 01403 //关联对象的属性是copy并且关联对象使用原子性
//};



static NSString *dslKEY = @"dslKEY";

@implementation ViewController (NSLog)

- (void)printStr:(NSString *)str
{

    NSLog(@"====print==%@",str);

}

- (void)setDsl:(NSString *)dsl
{
    //四个参数原对象，关联时的用来标记的是哪个属性key(可能要添加多个属性)
    objc_setAssociatedObject(self, &dslKEY, dsl,OBJC_ASSOCIATION_COPY);

}

- (NSString *)dsl
{

    return objc_getAssociatedObject(self,&dslKEY);

}

@end

















