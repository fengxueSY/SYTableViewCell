//
//  TwoViewController.m
//  SYTableViewCell
//
//  Created by 666gps on 2017/6/23.
//  Copyright © 2017年 666gps. All rights reserved.
//

#import "TwoViewController.h"
#import "SYDataSource.h"

@interface TwoViewController ()
@property (nonatomic,strong) NSMutableArray * dataArray;
@property (nonatomic,strong) SYDataSource * dataSource;

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _dataArray = [[NSMutableArray alloc]init];
    for (int i = 0; i < 50; i++) {
        NSInteger a = arc4random()%100;
        [_dataArray addObject:[NSString stringWithFormat:@"%ld",a]];
    }
    [self creatBaseUI];
}
-(void)creatBaseUI{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self.dataSource;
    _tableView.tableFooterView = [UIView new];
    [self.view addSubview:_tableView];
}
-(SYDataSource *)dataSource{
    if (!_dataSource) {
        _dataSource = [[SYDataSource alloc]init];
        _dataSource.itemsArray = _dataArray;
    }
    return _dataSource;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [self.dataSource cellClassForHeigth:indexPath];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
