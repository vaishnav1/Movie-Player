//
//  AppDelegate.h
//  Task
//
//  Created by vaishnav on 09/01/17.
//  Copyright © 2017 codefrux. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property(nonatomic) NSString *userpicked;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

