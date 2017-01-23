//
//  List.h
//  Task
//
//  Created by vaishnav on 10/01/17.
//  Copyright © 2017 codefrux. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface List : UITableViewController

@property NSArray *VideoName;
@property NSArray *Duration;
@property NSArray *Genre;
@property NSArray *Year;
//@property NSArray *imageof;
@property NSArray *urlLink;
@property (nonatomic,strong) NSMutableArray *sectionArray;






@end
