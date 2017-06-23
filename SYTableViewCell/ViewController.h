//
//  ViewController.h
//  SYTableViewCell
//
//  Created by 666gps on 2017/6/23.
//  Copyright © 2017年 666gps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView * tableView;


@end

