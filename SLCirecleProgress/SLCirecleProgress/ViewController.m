//
//  ViewController.m
//  SLCirecleProgress
//
//  Created by cherish on 16/6/29.
//  Copyright © 2016年 郑泽友. All rights reserved.
//

#import "ViewController.h"
#import "SLCirecleView.h"
#define defaultPercent 28
@interface ViewController ()
@property (nonatomic,assign)double percentCount;//变化的百分比
@end

@implementation ViewController{
    NSTimer *_timer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建进度条的方法
    [self createprogress];
}

- (void)createprogress{
    
    SLCirecleView *cirecleProgress = [[SLCirecleView alloc]initWithFrame:CGRectMake(100, 200, 200, 200)];
    cirecleProgress.cireProgressColour = [UIColor redColor];
    cirecleProgress.cireBackgroundColour  = [UIColor whiteColor];
    cirecleProgress.percent = defaultPercent;//设置百分比
    [self.view addSubview:cirecleProgress];
    self.percentCount = 0.0;
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(addtimeraction) userInfo:nil repeats:YES];
    [_timer fire];
    
}

- (void)addtimeraction{
    
    self.percentCount += 0.1;
    SLCirecleView *cirecleProgress;
    if (defaultPercent +self.percentCount <= 100.0) {
        cirecleProgress = [[SLCirecleView alloc]initWithFrame:CGRectMake(100, 200, 200, 200)];
        
    }else{
        
        [_timer invalidate];
    }
    cirecleProgress.cireProgressColour = [UIColor redColor];
    cirecleProgress.cireBackgroundColour  = [UIColor whiteColor];
    cirecleProgress.percent = defaultPercent + self.percentCount;//设置百分比
    [self.view addSubview:cirecleProgress];
    
    
}
@end
