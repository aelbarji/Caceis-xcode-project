//
//  MutiViewController.h
//  Caceis
//
//  Created by Ayoub El barji on 18/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MutiViewController : UIViewController

@property (strong,nonatomic) NSString* viewSelected;

- (IBAction)assembleeGeneraleSelected:(id)sender;
- (IBAction)messagesSelected:(id)sender;
- (IBAction)dashboardSelected:(id)sender;

- (IBAction)portefeuilleSelected:(id)sender;
@end
