//
//  OtherViewController.m
//  demo15_UIBezierPath
//
//  Created by LuoShimei on 16/5/15.
//  Copyright © 2016年 罗仕镁. All rights reserved.
//

#import "OtherViewController.h"
#import "LineView.h"
#import "ArcView.h"
#import "CurveView.h"

@interface OtherViewController ()
/** 直线 */
@property(nonatomic,strong) LineView *lineView;
/** 弧线 */
@property(nonatomic,strong) ArcView *arcView;
/** 曲线 */
@property(nonatomic,strong) CurveView *curveView;
@end

@implementation OtherViewController

#pragma mark - =====懒加载=====
- (LineView *)lineView{
    if (_lineView == nil) {
        _lineView = [[LineView alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height - 100)];
        _lineView.backgroundColor = [UIColor whiteColor];
    }
    return _lineView;
}

- (ArcView *)arcView{
    if (_arcView == nil) {
        _arcView = [[ArcView alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height - 100)];
        _arcView.backgroundColor = [UIColor whiteColor];
    }
    return _arcView;
}

- (CurveView *)curveView{
    if (_curveView == nil) {
        _curveView = [[CurveView alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height - 100)];
        _curveView.backgroundColor = [UIColor whiteColor];
    }
    return _curveView;
}

#pragma mark - =====关联方法=====

/** 显示线条 */
- (IBAction)showLineView:(id)sender {
    [self.view addSubview:self.lineView];
}

/** 显示弧形 */
- (IBAction)showArcView:(id)sender {
    [self.view addSubview:self.arcView];
}

/** 显示曲线 */
- (IBAction)showCurveView:(id)sender {
    [self.view addSubview:self.curveView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
