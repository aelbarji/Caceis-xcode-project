//
//  AGViewController.m
//  Caceis
//
//  Created by Ayoub El barji on 19/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "AGViewController.h"
#import "CaceisConfig.h"
#import "AppDelegate.h"
#import "AssembleGenerale.h"

@interface AGViewController ()
{
    NSMutableDictionary *dictAG;

}
@end

@implementation AGViewController
@synthesize heureLabel, dateLabel, titleLabel;
@synthesize addToCalendarButton;
@synthesize mapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    dictAG = [[NSMutableDictionary alloc] initWithDictionary: iCaceisAG];
    
    AssembleGenerale *ag = [MTLJSONAdapter modelOfClass:[AssembleGenerale class] fromJSONDictionary:dictAG error:nil];
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDateComponents *comp = [cal components:(NSCalendarUnitMonth | NSCalendarUnitMinute | NSCalendarUnitYear |
                                              NSCalendarUnitDay | NSCalendarUnitWeekday | NSCalendarUnitHour | NSCalendarUnitSecond)
                                    fromDate:ag.date];
    
    [dateLabel setText:[NSString stringWithFormat:@"%ld %@ %ld",[comp day],[DateHelper monthStringFrom:[comp month]], [comp year]]];
    [heureLabel setText:ag.heure];
    [titleLabel setText:ag.titre];
    
    addToCalendarButton.layer.cornerRadius = 20;
    
    //MAP View
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    NSNumber *latitude = [f numberFromString:[ag latitude]];
    NSNumber *longitude = [f numberFromString:[ag longitude]];
    CLLocationDegrees latDegrees = [latitude doubleValue];
    CLLocationDegrees lonDegrees = [longitude doubleValue];

    CLLocation *location = [[CLLocation alloc] initWithLatitude:latDegrees longitude:lonDegrees];
    CLLocationDistance regionRadius = 1000;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0);
    [mapView setRegion:region animated:YES];
    
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    [geocoder reverseGeocodeLocation: location completionHandler:^(NSArray* placemarks, NSError* error){
        if (placemarks && placemarks.count > 0) {
            CLPlacemark *topResult = [placemarks objectAtIndex:0];
            MKPlacemark *placemark = [[MKPlacemark alloc] initWithPlacemark:topResult];
            [mapView addAnnotation:placemark];
            [mapView selectAnnotation:placemark animated:YES];
        }

    }
     ];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
