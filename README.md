# CrashManagerDemo
Crash捕捉
## AppDelegate添加代码
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //注册消息处理函数的处理方法,处理崩溃信息,写入本地
    NSSetUncaughtExceptionHandler(&uncaughtExceptionHandler);

    return YES;
}

### 判断是否存在Crash日志
 CrashManager *crashManager = [CrashManager defaultManager];
    
    if ([crashManager isCrashLog]) {//Crash日志

    }
    
### 如果存在,打印Crash日志
        NSString *crashString = [crashManager crashLogContent];//Crash日志内容
        NSLog(@"crashString = %@",crashString);//
        
### 清除Crash日志
[crashManager clearCrashLog];//清除Crash日志

