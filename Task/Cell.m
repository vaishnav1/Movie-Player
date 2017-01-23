//
//  Cell.m
//  Task
//
//  Created by vaishnav on 11/01/17.
//  Copyright © 2017 codefrux. All rights reserved.
//

#import "Cell.h"
#import "playVideo.h"
@implementation Cell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setCellData:(NSDictionary*)dict{
    self.TF1.text =[NSString stringWithFormat:@"Name:%@",[dict valueForKey:@"Video_Name"]];
    self.Tf2.text =[NSString stringWithFormat:@"Duration:%@",[dict valueForKey:@"Duration"]];
    self.TF3.text =[NSString stringWithFormat:@"Genre:%@",[dict valueForKey:@"Genre"]];
    self.TF4.text =[NSString stringWithFormat:@"Year:%@",[dict valueForKey:@"Year"]];
    self.Photo.image = [UIImage imageNamed:[dict valueForKey:@"Image"]];
    
}



@end
