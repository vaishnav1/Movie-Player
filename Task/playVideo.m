//
//  playVideo.m
//  Task
//
//  Created by vaishnav on 14/01/17.
//  Copyright © 2017 codefrux. All rights reserved.
//

#import "playVideo.h"
#import "List.h"
#import "Cell.h"


@interface playVideo ()

@end

@implementation playVideo
@synthesize videoUrl;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
 
    NSLog(@"%@",videoUrl);
    
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:videoUrl]];
    [self.webView loadRequest:request];
    
    
            NSURL *Myurl=[[NSBundle mainBundle]URLForResource:videoUrl withExtension:@"mp4"];
            AVPlayer *video=[AVPlayer playerWithURL:Myurl];
            AVPlayerViewController *controller=[[AVPlayerViewController alloc]init];
            controller.player=video;
            [self.view addSubview:controller.view];
            [self addChildViewController:controller];
            [video play];
        }
    
    



- (void)didReceiveMemoryWarning {
    
    // Dispose of any resources thintat can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end


