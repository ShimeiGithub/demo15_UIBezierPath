//
//  CurveView.m
//  demo15_UIBezierPath
//
//  Created by LuoShimei on 16/5/16.
//  Copyright © 2016年 罗仕镁. All rights reserved.
//
/**
 *  画曲线
 */

#import "CurveView.h"

@implementation CurveView

- (void)drawRect:(CGRect)rect{
    UIBezierPath *path = [UIBezierPath bezierPath];
    //设置画笔的起点
    [path moveToPoint:CGPointMake(200, 5)];
    /**
     *  画笔的路线
     *  @param addCurveToPoint  画笔的终点
     */
    [path addCurveToPoint:CGPointMake(50, 205) controlPoint1:CGPointMake(50, 5) controlPoint2:CGPointMake(200, 205)];
    [path addCurveToPoint:CGPointMake(200, 405) controlPoint1:CGPointMake(200, 205) controlPoint2:CGPointMake(50, 405)];
    [[UIColor redColor] setStroke];
    path.lineWidth = 5;
    [path stroke];
    
    
    //矩形
    UIBezierPath *path0 = [UIBezierPath bezierPathWithRect:CGRectMake(5, 10, 100, 100)];
    [[UIColor greenColor] setStroke];
    path0.lineWidth = 5;
    [path0 stroke];
    
    //椭圆或圆
    UIBezierPath *path1 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(115, 10, 200, 100)];
    [[UIColor blueColor] setStroke];
    path1.lineWidth = 5;
    [path1 stroke];
    
    //圆角矩形
    UIBezierPath *path2 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(150, 150, 100, 100) cornerRadius:0.5];
    [[UIColor purpleColor] setStroke];
    path2.lineWidth = 5;
    [path2 stroke];
    
}

@end
