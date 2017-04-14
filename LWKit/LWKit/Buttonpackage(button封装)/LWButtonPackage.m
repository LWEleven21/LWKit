//
//  LWButtonPackage.m
//  LWKit
//
//  Created by 刘志伟 on 2017/4/7.
//  Copyright © 2017年 LW. All rights reserved.
//

#import "LWButtonPackage.h"

@implementation LWButtonPackage
/**
 *  自定义封装UIButton
 *
 *  @param rect frame
 *
 *  @param title button标题
 *
 *  @param font button标题字体大小
 *
 *  @param backgroundColor 背景颜色
 *
 *  @param backgroundImage 背景图片
 *
 *  @param superView 添加到的父类视图
 *
 *  @param target self
 *
 *  @param action 响应方法
 *
 *  @return 创建的Button
 */
+ (UIButton *)UIButtonWithFrame:(CGRect)rect Title:(NSString *)title TextFont:(UIFont *)font BackgroundColor:(UIColor *)backgroundColor BackgroundImage:(UIImage *)backgroundImage AddToView:(UIView *)superView Target:(id)target Action:(SEL)action{
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button.frame = rect;
    
    [button setTitle:title forState:UIControlStateNormal];
    
    button.titleLabel.font = font;
    
    button.backgroundColor = backgroundColor;
    
    [button setBackgroundImage:backgroundImage forState:UIControlStateNormal];
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    [superView addSubview:button];
    
    return button;
}
@end
