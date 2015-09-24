//
//  DatePickButton.m
//  PopViewDemo
//
//  Created by SongJizu on 15/5/8.
//  Copyright (c) 2015年 youlemobi. All rights reserved.
//

#import "DatePickButton.h"

#define CustomFont(a) [UIFont systemFontOfSize:a]
#define UIColorFromRGB(r,g,b) [UIColor colorWithRed:(float)r/255.0 green:(float)g/255.0 blue:(float)b/255.0 alpha:1.0]
#define ScreenWidth                             [UIScreen mainScreen].bounds.size.width
#define ScreenHeight                            [UIScreen mainScreen].bounds.size.height


@interface DatePickButton ()

@end

@implementation DatePickButton

-(instancetype)initWithtitle:(NSString * )title andWithNum:(NSString * )num {
    if (self = [super init]) {
        
        self.timeLB.text = title;
        [self addSubview:_timeLB];
        self.statusLB.text = num;
        [self addSubview:_statusLB];
        
    }
    return self;
}

+(instancetype)customButtonWithTitle:(NSString *)title andWithStatus:(NSString *)Status;
{
    return[[self alloc]initWithtitle:title andWithNum:Status];
}

-(UILabel *)timeLB{
    if (!_timeLB) {
        _timeLB = [[UILabel alloc]initWithFrame:CGRectMake((((ScreenWidth - 5)/4) - 75)/2, 5, 75, 20)];
        _timeLB.font = CustomFont(10);
        _timeLB.textAlignment = NSTextAlignmentCenter;
        _timeLB.textColor = [UIColor grayColor];
    }
    return _timeLB;
}

-(UILabel *)statusLB{
    if (!_statusLB) {
        _statusLB =[[UILabel alloc]initWithFrame:CGRectMake((((ScreenWidth - 5)/4) - 60)/2, 24, 60, 20)];
        _statusLB.font = CustomFont(14);
        _statusLB.textColor = [UIColor grayColor];
        _statusLB.textAlignment = NSTextAlignmentCenter;
    }
    return _statusLB;
}


@end
