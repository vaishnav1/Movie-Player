//
//  registerpage.h
//  Task
//
//  Created by vaishnav on 09/01/17.
//  Copyright © 2017 codefrux. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface registerpage : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *user;
@property (strong, nonatomic) IBOutlet UITextField *password;
@property (strong, nonatomic) IBOutlet UITextField *confirmpassword;

- (IBAction)savebtn:(id)sender;

@end
