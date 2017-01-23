//
//  loginpage.m
//  Task
//
//  Created by vaishnav on 09/01/17.
//  Copyright © 2017 codefrux. All rights reserved.
//

#import "loginpage.h"
#import "AppDelegate.h"
#import "registerpage.h"
#import "List.h"


#define CHARACTERS @" ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#define CHARACTERS_NUMBERS  [CHARACTERS stringByAppendingString:@"1234567890"]

@interface loginpage ()

@end

@implementation loginpage

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

- (IBAction)login:(id)sender {
    [self loginMethod];
    }
-(void)loginMethod{
    AppDelegate *appdelegate=[[UIApplication sharedApplication]delegate];
    NSManagedObjectContext *context=[appdelegate managedObjectContext];
    //NSManagedObject *objects;
    
    NSEntityDescription *entitydesc=[NSEntityDescription entityForName:@"Userdetails" inManagedObjectContext:context];
    NSFetchRequest *request=[[NSFetchRequest alloc]init];
    NSPredicate *pred=[NSPredicate predicateWithFormat:@"(username==%@ AND password==%@)",self.userfield.text,self.passwordfield.text];
    [request setEntity:entitydesc];
    [request setPredicate:pred];
    
    NSError *error = nil;
    
    NSArray *array = [context executeFetchRequest:request error:&error];
    if ([array count]==0) {
        UIAlertController *alertcontroller=[UIAlertController alertControllerWithTitle:@"Status" message:@"Error with Login Credentials" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *gotit = [UIAlertAction actionWithTitle:@"Okay" style:UIAlertActionStyleDefault handler:nil];
        [alertcontroller addAction:gotit];
        [self presentViewController:alertcontroller animated:YES completion:nil];
        
    }
    else{
        AppDelegate *delobj=[[UIApplication sharedApplication]delegate];
        delobj.userpicked=_userfield.text;
        UIStoryboard *loginboard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
        List *wpage=[loginboard instantiateViewControllerWithIdentifier:@"List"];
        [self.navigationController presentViewController:wpage animated:YES completion:nil];
       // [self.navigationController pushViewController:wpage animated:YES];
    }

}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField==self.userfield) {
        [textField resignFirstResponder];
        [self.passwordfield becomeFirstResponder];
    }else{
    [textField resignFirstResponder];
        [self loginMethod];
    }
    return YES;


}
@end
