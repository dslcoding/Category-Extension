//
//  ViewController.m
//  Category&Extension
//
//  Created by 董诗磊 on 2017/4/2.
//  Copyright © 2017年 董诗磊. All rights reserved.
//

#import "ViewController.h"

#import "ViewController+NSLog.h"

#import "ViewController_VCExten.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
//    //在没有使用runtim建立关联引用建立的字符串
//    self.dsl = @"我叫董诗磊,我就是一码农";
//    NSLog(@"====use runtime ===%@",self.dsl);
    
//    //调用类别的方法,运行
//    [self printStr:@"我叫董诗磊,我就是一码农"];
    
    //扩展
    [self test];
    
    self.vcExten = @"exten";
    NSLog(@"====use exten ==%@",self.vcExten);
    
}

- (void)test
{

    NSLog(@"extension===");
    [self handleInputModeListFromView:<#(nonnull UIView *)#> withEvent:<#(nonnull UIEvent *)#>]

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)handleInputModeListFromView:(nonnull UIView *)view withEvent:(nonnull UIEvent *)event{



}

@end
