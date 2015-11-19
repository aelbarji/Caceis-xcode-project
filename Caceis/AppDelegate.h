//
//  AppDelegate.h
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (readonly, strong, nonatomic) NSMutableArray *emetteursArray;
@property (readonly, strong, nonatomic) NSMutableArray *actionArray_1;
@property (readonly, strong, nonatomic) NSMutableArray *actionArray_2;
@property (readonly, strong, nonatomic) NSMutableArray *actionArray_3;
@property (readonly, strong, nonatomic) NSMutableArray *stockArray_1;
@property (readonly, strong, nonatomic) NSMutableArray *stockArray_2;
@property (readonly, strong, nonatomic) NSMutableArray *pagaArray;
@property (readonly, strong, nonatomic) NSMutableArray *messagesArray;
@property (readonly, strong, nonatomic) NSMutableDictionary *assembleArray;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

