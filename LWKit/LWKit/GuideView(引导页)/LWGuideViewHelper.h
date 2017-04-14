//
//  LWGuideViewHelper.h
//  LWKit
//
//  Created by LW on 2017/4/7.
//  Copyright © 2017年 LW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LWGuideView.h"

@interface LWGuideViewHelper : NSObject

+ (instancetype)shareInstance;

+(void)showIntroductoryPageView:(NSArray *)imageArray;

@end
