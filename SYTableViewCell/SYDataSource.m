//
//  SYDataSource.m
//  SYTableViewCell
//
//  Created by 666gps on 2017/6/23.
//  Copyright © 2017年 666gps. All rights reserved.
//

#import "SYDataSource.h"
#import "SYTableViewCell_Base.h"
#import "SYCell_One.h"
#import "SYCell_Two.h"

@implementation SYDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.itemsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SYTableViewCell_Base * cell = [[self cellClassAtIndexPath:indexPath] creatTableView:tableView];
    cell.conStr = self.itemsArray[indexPath.row];
    return cell;
}

- (Class)cellClassAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger num = [self.itemsArray[indexPath.row] integerValue] % 2;
    switch (num) {
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

- (NSString *)cellIdentiferAtIndexPath:(NSIndexPath *)indexPath{
    return NSStringFromClass([self cellClassAtIndexPath:indexPath]);
}
-(CGFloat)cellClassForHeigth:(NSIndexPath *)indexPath{
    Class cls = [self cellClassAtIndexPath:indexPath];
    return [cls cellHeight];
}

@end
