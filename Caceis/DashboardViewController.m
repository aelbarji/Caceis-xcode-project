//
//  DashboardViewController.m
//  Caceis
//
//  Created by Ayoub El barji on 18/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "DashboardViewController.h"
#import "CaceisConfig.h"
#import "AppDelegate.h"
#import "AssembleGenerale.h"
#import "Action.h"
#import "MutiViewController.h"

@interface DashboardViewController ()
{
    NSMutableDictionary *dictAG;
    NSMutableArray *arrayAction;
    NSString *viewSelected;
}

@end

@implementation DashboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dictAG = [[NSMutableDictionary alloc] initWithDictionary: iCaceisAG];
    
    switch (_index) {
        case 0:
            arrayAction = [[NSMutableArray alloc] initWithArray: iCaceisAction1];
            break;
        case 1:
            arrayAction = [[NSMutableArray alloc] initWithArray: iCaceisAction2];
            break;
        case 2:
            arrayAction = [[NSMutableArray alloc] initWithArray: iCaceisAction3];
            break;
            
        default:
            break;
    }
    
     AssembleGenerale *ag = [MTLJSONAdapter modelOfClass:[AssembleGenerale class] fromJSONDictionary:dictAG error:nil];

    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDateComponents *comp = [cal components:(NSCalendarUnitMonth | NSCalendarUnitMinute | NSCalendarUnitYear |
                                              NSCalendarUnitDay | NSCalendarUnitWeekday | NSCalendarUnitHour | NSCalendarUnitSecond)
                                    fromDate:ag.date];

    [_dateAG setText:[NSString stringWithFormat:@"%ld %@ %ld",[comp day],[DateHelper monthStringFrom:[comp month]], [comp year]]];
    [_heureAG setText:ag.heure];
    
    NSDictionary *dictAction = [arrayAction objectAtIndex:0];
    Action *action = [MTLJSONAdapter modelOfClass:[Action class] fromJSONDictionary:dictAction error:nil];
    NSString *valoLabel = [NSString stringWithFormat:@"%@€",action.valorisationGlobal];
    NSString *dateLabel = [NSString stringWithFormat:@"TOTAL AU %@",action.dateCours];
    [_coursGlobal setText:valoLabel];
    [_coursDate setText:dateLabel];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Multiview"]) {
        MutiViewController *multiViewController = segue.destinationViewController;
        multiViewController.viewSelected = viewSelected;
      
    }
    
}

- (IBAction)buttonBackAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)buttonAGAction:(id)sender {
    
    viewSelected = @"AGidentifier";
    [self performSegueWithIdentifier:@"Multiview" sender:self];
}

- (IBAction)buttonMessagesAction:(id)sender {
    
    viewSelected = @"MessIdentifier";
    [self performSegueWithIdentifier:@"Multiview" sender:self];
}
@end
