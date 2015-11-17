//
//  EmetteurTableViewCell.h
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmetteurTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *name;
@property (nonatomic, weak) IBOutlet UILabel *cours;
@property (nonatomic, weak) IBOutlet UIImageView *logo;

@end
