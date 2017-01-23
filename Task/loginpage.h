//
//  loginpage.h
//  Task
//
//  Created by vaishnav on 09/01/17.
//  Copyright © 2017 codefrux. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface loginpage : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *userfield;

@property (strong, nonatomic) IBOutlet UITextField *passwordfield;

- (IBAction)login:(id)sender;

@end
