//
//  DashboardViewController.h
//  Caceis
//
//  Created by Ayoub El barji on 18/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DateHelper.h"

@interface DashboardViewController : UIViewController

@property (assign, nonatomic) int index;
@property (weak, nonatomic) IBOutlet UILabel *dateAG;
@property (weak, nonatomic) IBOutlet UILabel *heureAG;
@property (weak, nonatomic) IBOutlet UILabel *coursGlobal;
@property (weak, nonatomic) IBOutlet UILabel *coursDate;

- (IBAction)buttonBackAction:(id)sender;
- (IBAction)buttonAGAction:(id)sender;
- (IBAction)buttonMessagesAction:(id)sender;

@end
