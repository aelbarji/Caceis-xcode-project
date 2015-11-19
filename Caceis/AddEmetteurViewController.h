//
//  AddEmetteurViewController.h
//  Caceis
//
//  Created by Ayoub El barji on 18/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Emetteur.h"

@class AddEmetteurViewController;

@protocol AddEmetteurViewControllerDelegate <NSObject>

- (void) addEmetteurViewController : (AddEmetteurViewController*) controller didSelectEmetteur : (NSString*) clientRef;

@end

@interface AddEmetteurViewController : UITableViewController

@property (nonatomic, weak) id <AddEmetteurViewControllerDelegate> delegate;

- (IBAction)CancelButton:(id)sender;

@end
