//
//  AGViewController.h
//  Caceis
//
//  Created by Ayoub El barji on 19/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "DateHelper.h"

@interface AGViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *heureLabel;
@property (strong, nonatomic) IBOutlet UILabel *dateLabel;
@property (strong, nonatomic) IBOutlet UIButton *addToCalendarButton;

@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@end
