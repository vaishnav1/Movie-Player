//
//  playVideo.h
//  Task
//
//  Created by vaishnav on 14/01/17.
//  Copyright © 2017 codefrux. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>
#import <SafariServices/SafariServices.h>
@interface playVideo : UIViewController

@property (strong,nonatomic) NSString *Number;
@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic,retain) NSString * videoUrl;
@end
