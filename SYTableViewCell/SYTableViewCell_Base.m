//
//  SYTableViewCell_Base.m
//  SYTableViewCell
//
//  Created by 666gps on 2017/6/23.
//  Copyright © 2017年 666gps. All rights reserved.
//

#import "SYTableViewCell_Base.h"

@implementation SYTableViewCell_Base
+(instancetype)creatTableView:(UITableView *)tabelView{
    static NSString * cellID = @"SYTableViewCell_Base";
    SYTableViewCell_Base * cell = [tabelView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:0]lastObject];
    }
    return cell;
}

+(CGFloat)cellHeight{
    return 44;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
