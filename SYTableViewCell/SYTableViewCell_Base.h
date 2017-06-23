//
//  SYTableViewCell_Base.h
//  SYTableViewCell
//
//  Created by 666gps on 2017/6/23.
//  Copyright © 2017年 666gps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SYTableViewCell_Base : UITableViewCell

//可为模型，或者其他数据，用于对cell赋值
@property (nonatomic,strong) NSString * conStr;


/**
 创建tableview
 */
+(instancetype)creatTableView:(UITableView *)tabelView;
/**
 cell 的高
 */
+(CGFloat)cellHeight;
@end
