//
//  LWLabelPackage.m
//  LWKit
//
//  Created by LW on 2017/4/7.
//  Copyright © 2017年 LW. All rights reserved.
//

//判断屏幕尺寸
#define IS_4 (fabs((double)[[UIScreen mainScreen] bounds].size.height - (double )568) < DBL_EPSILON )

#define IS_47 (fabs((double)[[UIScreen mainScreen] bounds].size.height - (double )667) < DBL_EPSILON )

#define IS_5 (fabs((double)[[UIScreen mainScreen] bounds].size.height - (double )960) < DBL_EPSILON )

#import "LWLabelPackage.h"

@implementation LWLabelPackage
/**
 初始化一个label
 @param string 文本内容
 @param font 文本字体属性
 @param superView 添加到的父类view
 @return 初始化的label
 */
+ (UILabel *)labelWithString:(NSString *)string WithFont:(UIFont *)font AddToView:(UIView *)superView{
    
    UILabel * label  = [[UILabel alloc]init];
    label.text = string;
    if (IS_4) {
        label.font = [UIFont systemFontOfSize:font.pointSize - 1];
    }else if (IS_47){
        label.font = font;
    }else {
        label.font = [UIFont systemFontOfSize:font.pointSize + 1];
    }
    label.font = font;
    [superView addSubview:label];
    return label;
}

/**
 初始化一个根据文本内容自动计算高度的label
 
 @param string 文本内容
 @param font 文本字体属性
 @param width 预设定文本的宽度
 @param superView 添加到的父类view
 @return 初始化的label
 */
+ (UILabel *)labelWithString:(NSString *)string WithFont:(UIFont *)font withPoint:(CGPoint )point withWidth:(CGFloat )width AddToView:(UIView *)superView{
    
    UILabel * label  = [[UILabel alloc]init];
    label.text = string;
    if (IS_4) {
        label.font = [UIFont systemFontOfSize:font.pointSize - 1];
        label.frame = CGRectMake(point.x, point.y, width, [self labelHeight:string font:[UIFont systemFontOfSize:font.pointSize - 1] width:width]);
    }else if (IS_47){
        label.font = font;
        label.frame = CGRectMake(point.x, point.y, width, [self labelHeight:string font:font width:width]);
    }else {
        label.font = [UIFont systemFontOfSize:font.pointSize + 1];
        label.frame = CGRectMake(point.x, point.y, width, [self labelHeight:string font:[UIFont systemFontOfSize:font.pointSize + 1] width:width]);
    }
    label.numberOfLines = 0;
    
    [superView addSubview:label];
    return label;
    
}
/**
 初始化一个根据文本内容自动计算宽度的label
 @param string 文本内容
 @param font 文本字体属性
 @param height 预设定文本的高度
 @param superView 添加到的父类view
 @return 初始化的label
 */
+ (UILabel *)labelWithString:(NSString *)string WithFont:(UIFont *)font withPoint:(CGPoint )point withHeight:(CGFloat )height AddToView:(UIView *)superView{
    
    UILabel * label  = [[UILabel alloc]init];
    label.text = string;
    if (IS_4) {
        label.font = [UIFont systemFontOfSize:font.pointSize - 1];
        label.frame = CGRectMake(point.x, point.y, [self labelHeight:string font:[UIFont systemFontOfSize:font.pointSize - 1] width:height], height);
    }else if (IS_47){
        label.font = font;
        label.frame = CGRectMake(point.x, point.y, [self labelHeight:string font:font width:height], height);
    }else {
        label.font = [UIFont systemFontOfSize:font.pointSize + 1];
        label.frame = CGRectMake(point.x, point.y, [self labelHeight:string font:[UIFont systemFontOfSize:font.pointSize + 1] width:height], height);
    }
    label.numberOfLines = 0;
    
    [superView addSubview:label];
    return label;
}

#pragma mark -辅助方法-动态计算文本高度-

/**
 动态计算文本的高度
 
 @param string 文本内容
 @param font 文本字体属性
 @param width 预设定文本的宽度
 @return 根据文本内容及字体属性Label宽度计算出的Label自适应高度
 */
+ (CGFloat)labelHeight:(NSString *)string font:(UIFont *)font width:(CGFloat)width
{
    //展开后得高度(计算出文本内容的高度+固定控件的高度)
    NSDictionary *attribute = @{NSFontAttributeName: font};
    
    NSStringDrawingOptions option = (NSStringDrawingOptions)(NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading);
    CGSize size = [string boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:option attributes:attribute context:nil].size;;
    return size.height;
}
#pragma mark -辅助方法-动态计算文本宽度-
/**
 动态计算文本的宽度
 
 @param string 文本内容
 @param font 文本字体属性
 @param height 预设定文本的高度
 @return 根据文本内容及字体属性Label高度计算出的Label自适应宽度
 */
+ (CGFloat)labelWidth:(NSString *)string font:(UIFont *)font height:(CGFloat)height
{
    //展开后得高度(计算出文本内容的高度+固定控件的高度)
    NSDictionary *attribute = @{NSFontAttributeName: font};
    
    NSStringDrawingOptions option = (NSStringDrawingOptions)(NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading);
    CGSize size = [string boundingRectWithSize:CGSizeMake(MAXFLOAT, height) options:option attributes:attribute context:nil].size;;
    return size.width;
}
@end
