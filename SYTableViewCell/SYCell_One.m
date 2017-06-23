//
//  SYCell_One.m
//  SYTableViewCell
//
//  Created by 666gps on 2017/6/23.
//  Copyright © 2017年 666gps. All rights reserved.
//

#import "SYCell_One.h"

@implementation SYCell_One

+(instancetype)creatTableView:(UITableView *)tabelView{
    static NSString * cellID = @"CELL_ONE";
    SYCell_One * cell = [tabelView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:0]lastObject];
    }
    return cell;
}
+(CGFloat)cellHeight{
    return 50;
}
-(void)setConStr:(NSString *)conStr{
    self.conTextLabel.text = conStr;
}
@end
