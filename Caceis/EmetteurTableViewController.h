//
//  EmetteurTableViewController.h
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString * const kBaseURL = @"http://demo5517854.mockable.io/";

@interface EmetteurTableViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *emetteurs;

- (IBAction)CancelButton:(id)sender;

@end
