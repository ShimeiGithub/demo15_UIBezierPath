//
//  DownloadView.m
//  demo15_UIBezierPath
//
//  Created by LuoShimei on 16/5/15.
//  Copyright © 2016年 罗仕镁. All rights reserved.
//

#import "DownloadView.h"

@interface DownloadView ()
@property(nonatomic,strong) UILabel *label;
@end

@implementation DownloadView
/**
 * 当使用storyboard的时候，系统会自动创建视图的实例
 * 会自动调用initWithCoder方法来进行初始化的工作
 * 所以这个视图的子视图的创建放在这个方法中
 * 这个方法绝对不能自己手动调用。
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.label = [[UILabel alloc] init];
        self.label.frame = CGRectMake((self.bounds.size.width - 80) / 2, (self.bounds.size.height) / 2, 80, 40);
        self.label.textAlignment = NSTextAlignmentCenter;
        [self addSubview:self.label];
    }
    return self;
}

/** 重写setProgressValue的set方，只要给这个舒心赋值就会尽心绘图操作 */
- (void)setProgressValue:(CGFloat)progressValue{
    //保留原来的赋值操作
    _progressValue = progressValue;
    
    //将下载的进度显示在标签上
    self.label.text = [NSString stringWithFormat:@"%.2lf%%",self.progressValue * 100];
    
    //重新绘图
    [self setNeedsDisplay];
}

/** 绘图方法 */
- (void)drawRect:(CGRect)rect{
    //创建UIBezierPath绘图对象
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    //设置圆的的圆心
    CGPoint center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
    
    //设置圆的半径
    CGFloat radius = MIN(self.bounds.size.width / 2, self.bounds.size.height / 2);
    
    //画圆弧
    [path addArcWithCenter:center radius:radius startAngle:(M_PI_2 * 3) endAngle:(self.progressValue * 2 * M_PI + M_PI_2 * 3) clockwise:YES];
    
    //设置线条的宽度
    path.lineWidth = 5;
    
    //设置颜色
    if (self.progressColor) {
        [self.progressColor setStroke];
    }else{
        [[UIColor blueColor] setStroke];
    }
    
    //开始绘图
    [path stroke];
    
}
@end
