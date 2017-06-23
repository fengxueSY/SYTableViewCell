//
//  SYCell_Two.m
//  SYTableViewCell
//
//  Created by 666gps on 2017/6/23.
//  Copyright © 2017年 666gps. All rights reserved.
//

#import "SYCell_Two.h"

@implementation SYCell_Two

+(instancetype)creatTableView:(UITableView *)tabelView{
    static NSString * cellID = @"CELL_TWO";
    SYCell_Two * cell = [tabelView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:0]lastObject];
    }
    return cell;
}
+(CGFloat)cellHeight{
    return 100;
}
-(void)setConStr:(NSString *)conStr{
    self.conTextLabel.text = conStr;
}

@end
