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
        NSLog(@"crashString = %@",crashString);//
    }
    
//    [crashManager clearCrashLog];//清除Crash日志

    
    //Crash测试
    UIButton *crashBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    crashBtn.frame = CGRectMake(self.view.frame.size.width/2 - 50, 200, 100, 40);
    crashBtn.backgroundColor = [UIColor redColor];
    [crashBtn addTarget:self action:@selector(crashTest) forControlEvents:UIControlEventTouchUpInside];
    [crashBtn setTitle:@"Crash" forState:UIControlStateNormal];
    [crashBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:crashBtn];
    
}

-(void)crashTest{
    
    NSString *crashString = nil;
    NSDictionary *params = [NSDictionary dictionary];
    params = @{@"crashTest":crashString,
               };
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
