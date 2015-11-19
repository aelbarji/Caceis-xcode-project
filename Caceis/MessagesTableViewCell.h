//
//  MessagesTableViewCell.h
//  Caceis
//
//  Created by Ayoub El barji on 19/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessagesTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *libelleLabel;
@property (strong, nonatomic) IBOutlet UILabel *contenuLabel;
@property (strong, nonatomic) IBOutlet UILabel *dateLabel;

@end
