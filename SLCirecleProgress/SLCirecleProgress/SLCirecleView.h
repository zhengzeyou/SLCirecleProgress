//
//  SLCirecleView.h
//  SLCirecleProgress
//
//  Created by cherish on 16/6/29.
//  Copyright © 2016年 郑泽友. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SLCirecleView : UIView
@property (nonatomic,retain)UIColor *cireBackgroundColour;//圆圈进度条的背景圈的颜色
@property (nonatomic,assign) double percent;//设置百分比的参数
@property (nonatomic,retain)UIColor *cireProgressColour;//圆圈进度条的进度圈的颜色

@end
