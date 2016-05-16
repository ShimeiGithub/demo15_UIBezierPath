//
//  DownloadView.h
//  demo15_UIBezierPath
//
//  Created by LuoShimei on 16/5/15.
//  Copyright © 2016年 罗仕镁. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DownloadView : UIView
/** 公开一个属性，用于存储slider下载的进度 */
@property(nonatomic,assign) CGFloat progressValue;

/** 公开一个属性，用于设置进度条的颜色 */
@property(nonatomic,strong) UIColor *progressColor;
@end
