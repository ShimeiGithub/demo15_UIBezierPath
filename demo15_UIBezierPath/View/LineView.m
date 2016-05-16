//
//  LineView.m
//  demo15_UIBezierPath
//
//  Created by LuoShimei on 16/5/16.
//  Copyright © 2016年 罗仕镁. All rights reserved.
//
/**
 *  利用UIBezierPath的实例对象进行绘画，在这个类中绘画的是由线条拼接而成的一个图形
 */

#import "LineView.h"

@implementation LineView

/** 绘图方法 */
- (void)drawRect:(CGRect)rect{
    //创建UIBezierPath的实例对象
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    //勾勒图形(50, 100)这个点是起点
    [path moveToPoint:CGPointMake(50, 100)];
    [path addLineToPoint:CGPointMake(50, 200)];
    [path addLineToPoint:CGPointMake(150, 100)];
    
    //添加这句代码，会使得图形成为一个回路，意思是终点到起点这条线系统就会画上去
    //[path closePath];
    
    
    //设置图形的线条的颜色
    [[UIColor redColor] setStroke];
    
    
    //设置图形内部填充的颜色
    [[UIColor grayColor] setFill];
    
    //设置线条连接的样式
    path.lineJoinStyle = kCGLineJoinRound;
    
    //设置线帽的样式（线帽就是线条的起点和终点线条是否有超出一点点的像帽子一样的盖住）
    path.lineCapStyle = kCGLineCapSquare;
    
    
    //设置线条的宽度
    path.lineWidth = 5;
    
    
    //绘制图形
    [path stroke];
    [path fill];
    
}

@end
