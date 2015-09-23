//
//  ViewController.m
//  CrashManagerDemo
//
//  Created by LYoung on 15/9/23.
//  Copyright (c) 2015年 LYoung. All rights reserved.
//

#import "ViewController.h"
#import "CrashManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CrashManager *crashManager = [CrashManager defaultManager];
    
    if ([crashManager isCrashLog]) {//Crash日志
        
        NSString *crashString = [crashManager crashLogContent];//Crash日志内容
        
    }
    
    [crashManager clearCrashLog];//清除Crash日志

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
