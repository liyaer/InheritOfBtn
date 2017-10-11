//
//  payBtn.h
//  LHNewReader
//
//  Created by 杜文亮 on 2017/10/10.
//  Copyright © 2017年 Su Lei Han. All rights reserved.
//


/*
 *   自定义一个符合自己要求的btn，外界使用该btn（通常为一系列相似的btn写一个自定义类）该Demo演示了三种写法：
 
 *   1，不使用block，可以选择【外部调用时】绑定一个点击事件或者【内、外】分别绑定一个点击事件，这里演示后者（前者就是平常的写法故不再演示），后者相对于前者的优点是，可以在内部绑定的点击事件中处理btn本身的一些通用改变（比如选中状态、颜色等），这样外部绑定的点击事件只需要专心处理业务逻辑即可，避免了代码的重复书写
 
 *   2，使用block属性，将内部的点击事件的处理放到block回调中
 
 *   3，使用block方法，将内部的点击事件的处理放到block回调中
 */
#import <UIKit/UIKit.h>


typedef void(^btnClickAction)(UIButton *sender);//2、3


@interface payBtn : UIButton

@property (nonatomic,copy) btnClickAction clicked;//2、3

-(void)clickBlock:(btnClickAction)block;//3 

@end
