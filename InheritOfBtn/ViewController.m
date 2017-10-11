//
//  ViewController.m
//  InheritOfBtn
//
//  Created by 杜文亮 on 2017/10/10.
//  Copyright © 2017年 杜文亮. All rights reserved.
//

#import "ViewController.h"
#import "payBtn.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    payBtn *pbtn = [[payBtn alloc] init];
    pbtn.frame = CGRectMake(0, 0, 100, 50);
    [pbtn setTitle:@"测试继承" forState:UIControlStateNormal];
    [pbtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
//  1  [pbtn addTarget:self action:@selector(dylog) forControlEvents:UIControlEventTouchUpInside];
//  2  pbtn.clicked = ^(UIButton *sender) {
//        NSLog(@"block属性方式实现点击事件");
//    };
    [pbtn clickBlock:^(UIButton *sender) {
        NSLog(@"block方法实现点击事件");
    }];
    [self.view addSubview:pbtn];
}

//1 初始化完自定义类型的btn，还可以继续为其绑定点击事件，这里主要处理业务逻辑
//-(void)dylog
//{
//    NSLog(@"继承的btn响应两个点击事件，自定义的btn内部点击事件用来更改界面效果，这里的点击事件用来处理业务逻辑");
//}

@end
