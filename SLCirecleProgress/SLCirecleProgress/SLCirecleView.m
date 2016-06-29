//
//  SLCirecleView.m
//  SLCirecleProgress
//
//  Created by cherish on 16/6/29.
//  Copyright © 2016年 郑泽友. All rights reserved.
//

#import "SLCirecleView.h"
#define PI 3.14159265358979323846
#define oneOfpercentPI  2*PI/100.0
#define RGB(r,g,b)  [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]

@implementation SLCirecleView{
    NSTimer *_timer;//添加的定时器
    CGContextRef _context ;
    
}

//初始化方法
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor grayColor];
        
    }
    return  self;
}

- (instancetype )initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.backgroundColor = [UIColor grayColor];
        
    }
    return self;
}

#pragma mark --画图的系统方法
- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    //取得图形上下文（画笔）
    CGContextRef context = UIGraphicsGetCurrentContext();
    _context = context;
    [self drawArc:context];
    
    
    
}


#pragma mark ----绘制圆弧
- (void)drawArc:(CGContextRef )context{
    
    if (self.percent >= 0.0) {
        
        //边框圆
        CGContextSetRGBStrokeColor(context,1,1,1,1.0);//画笔线的颜色
        CGContextSetLineWidth(context, 1.0);//线的宽度
        [self.cireBackgroundColour setStroke];
        CGContextAddArc(context, self.frame.size.width/2, self.frame.size.width/2, self.frame.size.width/2.0-1, 0, 2*PI, 0); //添加一个圆
        CGContextDrawPath(context, kCGPathStroke); //绘制路径
        
        [self.cireProgressColour setStroke];
        CGContextAddArc(context, self.frame.size.width/2.0, self.frame.size.width/2, self.frame.size.width/2.0-1,  -5*PI/2.0 + oneOfpercentPI * self.percent, -PI/2,1.0); //添加一个圆
        CGContextDrawPath(context, kCGPathStroke); //绘制路径
        
    }
}

@end
