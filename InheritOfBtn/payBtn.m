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

//1 自定义的btn内部设置点击事件，这里可以写一些公共的改变（比如更改btn的状态颜色等）
//-(void)changeColor:(UIButton *)btn
//{
//    if (btn.isSelected)
//    {
//        btn.selected = NO;
//        btn.layer.borderColor = [UIColor grayColor].CGColor;
//    }
//    else
//    {
//        btn.selected = YES;
//        btn.layer.borderColor = [UIColor greenColor].CGColor;
//    }
//}

//2 点击事件中，实现block的调用
//-(void)changeColor:(UIButton *)btn
//{
//    if (self.clicked)
//    {
//        self.clicked(btn);
//    }
//}

//3 点击事件中，实现block的调用
-(void)changeColor:(UIButton *)btn
{
    if (self.clicked)
    {
        self.clicked(btn);
    }
}
//3 block的实现（外界调用的是这个方法）
-(void)clickBlock:(btnClickAction)block
{
    self.clicked = block;//将外界的block的实现，绑定到我们的内部的block上
    
    /*
     *   总结：block的属性和方法调用，二者的区别就在于block的绑定过程
     
     *   原理：属性方式直接在外界属性调用时实现了block的实现和内部block属性的绑定，类似于这样：
                 pbtn.clicked = ^(UIButton *sender) {
                     NSLog(@"block属性方式实现点击事件");
                 };
         而方法外界调用仅仅是实现了block的实现这一过程，并没有完成block和我们内部block属性的绑定，类似这样：
                 [pbtn clickBlock:^(UIButton *sender) {
                    NSLog(@"block方法实现点击事件");
                 }];
         所以我们要在我们构造的方便外界调用的含block属性的方法中，实现block的绑定过程。
        =================================================================================
         其实二者本质是一样的，我们先看
                 [pbtn clickBlock:^(UIButton *sender) {
                    NSLog(@"block方法实现点击事件");
                 }];
         这个方法内部实现是：
                 self.clicked = block;
         最终效果就是：（就是我们属性调用的写法）
                 self.clicked = ^(UIButton *sender) {
                    NSLog(@"block属性方式实现点击事件");
                 };
     */
}


@end
