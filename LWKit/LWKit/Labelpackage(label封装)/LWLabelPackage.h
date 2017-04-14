//
//  LWLabelPackage.h
//  LWKit
//
//  Created by LW on 2017/4/7.
//  Copyright © 2017年 LW. All rights reserved.
//

#define KScreenWidth [UIScreen mainScreen].bounds.size.width
#define KScreenHeight [UIScreen mainScreen].bounds.size.height

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LWLabelPackage : NSObject
/**
 初始化一个label
 @param string 文本内容
 @param font 文本字体属性
 @param superView 添加到的父类view
 @return 初始化的label
 */
+ (UILabel *)labelWithString:(NSString *)string WithFont:(UIFont *)font AddToView:(UIView *)superView;

/**
 初始化一个根据文本内容自动计算高度的label
 
 @param string 文本内容
 @param font 文本字体属性
 @param point 预设定文本的 x y 点
 @param width 预设定文本的宽度
 @param superView 添加到的父类view
 @return 初始化的label
 */
+ (UILabel *)labelWithString:(NSString *)string WithFont:(UIFont *)font withPoint:(CGPoint )point withWidth:(CGFloat )width AddToView:(UIView *)superView;
/**
 初始化一个根据文本内容自动计算宽度的label
 
 @param string 文本内容
 @param font 文本字体属性
 @param point 预设定文本的 x y 点
 @param height 预设定文本的高度
 @param superView 添加到的父类view
 @return 初始化的label
 */
+ (UILabel *)labelWithString:(NSString *)string WithFont:(UIFont *)font withPoint:(CGPoint )point withHeight:(CGFloat )height AddToView:(UIView *)superView;
@end
