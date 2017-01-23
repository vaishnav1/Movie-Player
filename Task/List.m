//
//  List.m
//  Task
//
//  Created by vaishnav on 10/01/17.
//  Copyright © 2017 codefrux. All rights reserved.
//

#import "List.h"
#import "Cell.h"
#import "registerpage.h"
#import "playVideo.h"

@interface List ()

@end

@implementation List

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.sectionArray = [[NSMutableArray alloc]init];
    [self.sectionArray addObject:[NSDictionary dictionaryWithObjects:@[@"Kaabil",@"00:02:23",@"Drama",@"2017",@"How",@"download.jpeg"] forKeys:@[@"Video_Name",@"Duration",@"Genre",@"Year",@"urlLink",@"Image"] ]];
    [self.sectionArray addObject:[NSDictionary dictionaryWithObjects:@[@"Cars 3",@"00:01:54",@"Animation",@"2016",@"Teddy",@"download (2).jpeg"] forKeys:@[@"Video_Name",@"Duration",@"Genre",@"Year",@"urlLink",@"Image"] ]];
    [self.sectionArray addObject:[NSDictionary dictionaryWithObjects:@[@"SpiderMan",@"00:02:11",@"SuperHero",@"2017",@"Animated",@"download (1).jpeg"] forKeys:@[@"Video_Name",@"Duration",@"Genre",@"Year",@"urlLink",@"Image"] ]];
    [self.sectionArray addObject:[NSDictionary dictionaryWithObjects:@[@"Despicable Me 3",@"00:02:30",@"Animated",@"2017",@"Illusion",@"download (4).jpeg"] forKeys:@[@"Video_Name",@"Duration",@"Genre",@"Year",@"urlLink",@"Image"] ]];
    [self.sectionArray addObject:[NSDictionary dictionaryWithObjects:@[@"Max Steel Trailer",@"00:02:30",@"Superhero",@"2016",@"Bunny",@"download (3).jpeg"] forKeys:@[@"Video_Name",@"Duration",@"Genre",@"Year",@"urlLink",@"Image"] ]];
    [self.tableView reloadData];
    NSLog(@"section:%@",self.sectionArray);
  // _imageof=[NSArray arrayWithObjects:@"download.jpeg",@"download(1).jpeg",@"download(2).jpeg",@"download(3).jpeg",@"download(4).jpeg", nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.sectionArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     Cell *videoPlayerCell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
        
    NSDictionary *info = [self.sectionArray objectAtIndex:indexPath.row];
    [videoPlayerCell setCellData:info];
    //[videoPlayerCell.moreInfo addTarget:self action:@selector(moreInfoAction:) forControlEvents:UIControlEventTouchUpInside];
    //[videoPlayerCell.moreInfo setTag:indexPath.row];
    return videoPlayerCell;
}




-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    playVideo *play=[[playVideo alloc]init];
    play.videoUrl=[[self.sectionArray objectAtIndex:indexPath.row]valueForKey:@"urlLink"];
//    [self.navigationController pushViewController:play animated:YES];
    [self presentViewController:play animated:YES completion:nil];
}






//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    //playVideo *dest = (playVideo *)segue.destinationViewController;
//    NSIndexPath *path = [[self.tableView indexPathsForSelectedRows]objectAtIndex:0];
//    
//    if ([segue.identifier isEqualToString:@"PlayVideo"])
//    {
//        playVideo *dest=segue.destinationViewController;
//        dest.videoUrl = [[self.sectionArray objectAtIndex:path.row]valueForKey:@"urlLink"];
//    
//        
//        
//    }
//    
//    
//    
//}





@end

