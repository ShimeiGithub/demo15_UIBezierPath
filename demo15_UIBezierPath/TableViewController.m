//
//  TableViewController.m
//  demo15_UIBezierPath
//
//  Created by LuoShimei on 16/5/15.
//  Copyright © 2016年 罗仕镁. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()
@property(nonatomic,strong) NSArray *names;
@end

@implementation TableViewController
/** 懒加载 */
- (NSArray *)names{
    if (_names == nil) {
        _names = @[@"下载进度条", @"图形"];
    }
    return _names;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.tableFooterView = [[UIView alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.names.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableCell" forIndexPath:indexPath];
    
    NSString *name = self.names[indexPath.row];
    cell.textLabel.text = name;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    if (indexPath.row == 0) {
        //使用storyboard实例化Main Storyboard中的控制器
        [self.navigationController pushViewController:[storyboard instantiateViewControllerWithIdentifier:@"ViewController"] animated:YES];
    }else{
        [self.navigationController pushViewController:[storyboard instantiateViewControllerWithIdentifier:@"OtherViewController"] animated:YES];
    }
}

@end
