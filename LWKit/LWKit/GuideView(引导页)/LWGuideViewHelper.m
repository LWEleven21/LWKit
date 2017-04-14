//
//  LWGuideViewHelper.m
//  LWKit
//
//  Created by LW on 2017/4/7.
//  Copyright © 2017年 LW. All rights reserved.
//

//
#define KScreenHeight      [[UIScreen mainScreen] bounds].size.height
#define KScreenWidth       [[UIScreen mainScreen] bounds].size.width

#import "LWGuideViewHelper.h"
@interface LWGuideViewHelper()
@property (nonatomic) UIWindow *rootWindow;
@property(nonatomic,strong)LWGuideView *curIntroductoryPagesView;
@end
@implementation LWGuideViewHelper
+ (instancetype)shareInstance
{
    static LWGuideViewHelper *shareInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[LWGuideViewHelper alloc] init];
    });
    
    return shareInstance;
}

-(instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

+(void)showIntroductoryPageView:(NSArray *)imageArray
{
    if (![LWGuideViewHelper shareInstance].curIntroductoryPagesView) {
        [LWGuideViewHelper shareInstance].curIntroductoryPagesView=[[LWGuideView alloc]initPagesViewWithFrame:CGRectMake(0, 0, KScreenWidth, KScreenHeight) Images:imageArray];
    }
    
    [LWGuideViewHelper shareInstance].rootWindow = [UIApplication sharedApplication].keyWindow;
    [[LWGuideViewHelper shareInstance].rootWindow addSubview:[LWGuideViewHelper shareInstance].curIntroductoryPagesView];
}

@end
