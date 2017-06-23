//
//  ViewController.m
//  SYTableViewCell
//
//  Created by 666gps on 2017/6/23.
//  Copyright © 2017年 666gps. All rights reserved.
//

#import "ViewController.h"
#import "SYTableViewCell_Base.h"
#import "SYCell_One.h"
#import "SYCell_Two.h"
#import "TwoViewController.h"

@interface ViewController (){
    NSMutableArray * dataArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dataArray = [[NSMutableArray alloc]init];
    for (int i = 0; i < 50; i++) {
        NSInteger a = arc4random()%100;
        [dataArray addObject:[NSString stringWithFormat:@"%ld",a]];
    }
    [self creatBaseUI];
}
-(void)creatBaseUI{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.tableFooterView = [UIView new];
    [self.view addSubview:_tableView];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    Class cls = [self chooseClass:indexPath];
    return [cls cellHeight];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return dataArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SYTableViewCell_Base * cell = [[self chooseClass:indexPath] creatTableView:tableView];
    cell.conStr = dataArray[indexPath.row];
    return cell;
}
-(Class)chooseClass:(NSIndexPath *)index{
    NSInteger a = [dataArray[index.row] integerValue] % 2;
    switch (a) {
        case 0:
        {
            return [SYCell_One class];
        }
            break;
        case 1:
        {
            return [SYCell_Two class];
        }
            break;
    }
    return nil;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.navigationController pushViewController:[TwoViewController new] animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
