//
//  ViewController.m
//  demo15_UIBezierPath
//
//  Created by LuoShimei on 16/5/15.
//  Copyright © 2016年 罗仕镁. All rights reserved.
//

#import "ViewController.h"
#import "DownloadView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet DownloadView *downloadView;

@property (weak, nonatomic) IBOutlet UISlider *slider;
@end

@implementation ViewController
/** 改变slider数值 */
- (IBAction)changeSliderValue:(id)sender {
    self.downloadView.progressValue = self.slider.value;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"进度条";
//    self.view.backgroundColor = [UIColor whiteColor];
    self.slider.value = 0;
    self.downloadView.progressColor = [UIColor blueColor];
    self.downloadView.progressValue = self.slider.value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
