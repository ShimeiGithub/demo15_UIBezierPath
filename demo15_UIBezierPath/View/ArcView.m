//
//  ArcView.m
//  demo15_UIBezierPath
//
//  Created by LuoShimei on 16/5/16.
//  Copyright © 2016年 罗仕镁. All rights reserved.
//
/**
 *  利用UIBezierPath的实例对象进行绘画，绘画的是一个弧形的界面图形
 */

#import "ArcView.h"

@implementation ArcView


- (void)drawRect:(CGRect)rect {
    //创建UIBezierPath对象
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    /**
     *  center      圆弧的中心点
     *  radius      圆弧所在圆的半径长
     *  startAngle  开始弧度
     *  endAngle    结束弧度
     *  注意：弧度的开始点是x轴的正方向，顺时针方向旋转
     */
    [path addArcWithCenter:self.center radius:100 startAngle:0 endAngle:M_PI_2 clockwise:YES];
    
    path.lineWidth = 5;
    
    [path stroke];
}

@end
