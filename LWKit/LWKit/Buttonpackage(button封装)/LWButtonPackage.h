//
//  LWButtonPackage.h
//  LWKit
//
//  Created by 刘志伟 on 2017/4/7.
//  Copyright © 2017年 LW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LWButtonPackage : NSObject
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
#pragma mark -- 封装的Button
+ (UIButton *)UIButtonWithFrame:(CGRect)rect Title:(NSString *)title TextFont:(UIFont *)font BackgroundColor:(UIColor *)backgroundColor BackgroundImage:(UIImage *)backgroundImage AddToView:(UIView *)superView Target:(id)target Action:(SEL)action;
@end
