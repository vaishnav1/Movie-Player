//
//  registerpage.m
//  Task
//
//  Created by vaishnav on 09/01/17.
//  Copyright © 2017 codefrux. All rights reserved.
//

#import "registerpage.h"
#import "loginpage.h"
#import "AppDelegate.h"

@interface registerpage ()

@end

@implementation registerpage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)savebtn:(id)sender {
    AppDelegate *appdelobj=[[UIApplication sharedApplication]delegate];
    NSManagedObjectContext *context=[appdelobj managedObjectContext];
    NSManagedObject *object;
    object=[NSEntityDescription insertNewObjectForEntityForName:@"Userdetails" inManagedObjectContext:context];
    [object setValue: _user.text forKey:@"username"];
    [object setValue:_password.text forKey:@"password"];
    [object setValue:_confirmpassword.text forKey:@"confirmpassword"];
    NSError *error;
    
    BOOL s=[_password.text isEqualToString:_confirmpassword.text];
    if (self.user.text.length>0) {
        if (self.password.text.length>0) {
            if (s==0) {
                
                UIAlertController *alertcontroller=[UIAlertController alertControllerWithTitle:@"Status" message:@"Both Passwords Must Match" preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *gotit = [UIAlertAction actionWithTitle:@"Okay" style:UIAlertActionStyleDefault handler:nil];
                [alertcontroller addAction:gotit];
                [self presentViewController:alertcontroller animated:YES completion:nil];
                
            }
            else {
                [context save:&error];
                UIAlertController *alertcontroller1=[UIAlertController alertControllerWithTitle:@"Status" message:@"Successfully Created" preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *gotit = [UIAlertAction actionWithTitle:@"Close" style:UIAlertActionStyleDefault handler:nil];
                [alertcontroller1 addAction:gotit];
                [self presentViewController:alertcontroller1 animated:YES completion:nil];
            }

        }else{
            UIAlertController *alertcontroller1=[UIAlertController alertControllerWithTitle:@"Oops" message:@"Password should be non null" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *gotit = [UIAlertAction actionWithTitle:@"Close" style:UIAlertActionStyleDefault handler:nil];
            [alertcontroller1 addAction:gotit];
            [self presentViewController:alertcontroller1 animated:YES completion:nil];
            
        }
    }
    UIAlertController *alertcontroller1=[UIAlertController alertControllerWithTitle:@"Status" message:@"User name should be non null" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *gotit = [UIAlertAction actionWithTitle:@"Close" style:UIAlertActionStyleDefault handler:nil];
    [alertcontroller1 addAction:gotit];
    [self presentViewController:alertcontroller1 animated:YES completion:nil];
    }
-(void)alertview:(UIAlertViewStyle *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex==0) {
        
        UIStoryboard *board1=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
        loginpage *load=[board1 instantiateViewControllerWithIdentifier:@"home"];
        [self.navigationController pushViewController:load animated:YES];
    }
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}



@end
