//
//  payBtn.m
//  LHNewReader
//
//  Created by 杜文亮 on 2017/10/10.
//  Copyright © 2017年 Su Lei Han. All rights reserved.
//

#import "payBtn.h"

@implementation payBtn

-(instancetype)init
{
    if (self = [super init])
    {
        self.layer.borderWidth = 1.0;
        self.layer.borderColor = [UIColor greenColor].CGColor;
        [self addTarget:self action:@selector(changeColor:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

-(void)changeColor:(UIButton *)btn
{
    if (btn.isSelected)
    {
        btn.selected = NO;
        btn.layer.borderColor = [UIColor grayColor].CGColor;
    }
    else
    {
        btn.selected = YES;
        btn.layer.borderColor = [UIColor greenColor].CGColor;
    }
}

@end
