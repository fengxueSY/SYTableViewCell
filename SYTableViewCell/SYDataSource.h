//
//  SYDataSource.h
//  SYTableViewCell
//
//  Created by 666gps on 2017/6/23.
//  Copyright © 2017年 666gps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SYDataSource : NSObject<UITableViewDataSource>
@property (nonatomic,strong) NSArray *itemsArray;


/**
 高度
 */
- (CGFloat)cellClassForHeigth:(NSIndexPath *)indexPath;
@end
