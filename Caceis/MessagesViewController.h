//
//  MessagesViewController.h
//  Caceis
//
//  Created by Ayoub El barji on 19/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessagesViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@end
