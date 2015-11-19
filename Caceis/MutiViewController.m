//
//  MutiViewController.m
//  Caceis
//
//  Created by Ayoub El barji on 18/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "MutiViewController.h"
#import "ContainerViewController.h"

@interface MutiViewController ()

@end

@implementation MutiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if ([segue.identifier isEqualToString:@"embedContainer"]) {
        ContainerViewController *containerViewController = segue.destinationViewController;
        containerViewController.viewSelected = _viewSelected;
    }
}

- (IBAction)assembleeGeneraleSelected:(id)sender {
}

- (IBAction)messagesSelected:(id)sender {
}

- (IBAction)dashboardSelected:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)portefeuilleSelected:(id)sender {
}
@end
