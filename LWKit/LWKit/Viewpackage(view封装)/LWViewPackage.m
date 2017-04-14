//
//  LWViewPackage.m
//  LWKit
//
//  Created by LW on 2017/4/7.
//  Copyright © 2017年 LW. All rights reserved.
//

#import "LWViewPackage.h"

@implementation LWViewPackage

/**
 *  自定义封装UIView
 *
 *  @param rect frame
 *
 *  @param backgroundColor 背景颜色
 *
 *  @param superView 添加到的父类视图
 *
 *  @return 创建的View
 */
#pragma mark -- 封装的UIView
+(UIView *)UIViewWithFrame:(CGRect)rect BackgroundColor:(UIColor *)backgroundColor AddToView:(UIView *)superView {
    
    UIView * view = [[UIView alloc]initWithFrame:rect];
    
    view.backgroundColor = backgroundColor;
    
    [superView addSubview:view];
    
    return view ;
}

@end
