//
//  Cell.h
//  Task
//
//  Created by vaishnav on 11/01/17.
//  Copyright © 2017 codefrux. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Cell : UITableViewCell


@property (strong, nonatomic) IBOutlet UILabel *Tf2;
@property (strong, nonatomic) IBOutlet UILabel *TF1;
@property (strong, nonatomic) IBOutlet UILabel *TF3;
@property (strong, nonatomic) IBOutlet UILabel *TF4;
@property (strong, nonatomic) IBOutlet UIImageView *Photo;



-(void)setCellData:(NSDictionary*)dict;
@end
