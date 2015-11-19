//
//  LoadScreenController.m
//  Caceis
//
//  Created by Ayoub El barji on 17/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "LoadScreenController.h"
#import <MBProgressHUD/MBProgressHUD.h>
#import "CaceisClient.h"
#import "EmetteurTableViewController.h"
#import "AppDelegate.h"
#import "CaceisConfig.h"


@interface LoadScreenController()
{
    MBProgressHUD *HUD;
    NSMutableArray *emetteurs;
}

@end

@implementation LoadScreenController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    

}

- (void) viewWillAppear:(BOOL)animated
{
    
    HUD  = [[MBProgressHUD alloc] initWithView:self.view];
    
    HUD.labelText       = @"Loading";
    // hud.minSize         = CGSizeMake(200,200);
    HUD.dimBackground   = YES;
    HUD.mode            = MBProgressHUDModeIndeterminate;
    [self.view addSubview:HUD];
    
    [HUD showWhileExecuting:@selector(myProgressTask)
                   onTarget:self
                 withObject:nil
                   animated:YES];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"choixEmetteurs"]) {
     //   UINavigationController *navigationController = segue.destinationViewController;
      //  EmetteurTableViewController *emetteurController = [navigationController viewControllers][0];
        //   emetteurController.emetteurs = emetteurs;
    }
}

- (void)myProgressTask {
        
    // Do something..
    CaceisClient *apiClient    = [[CaceisClient alloc]initWithURL];
    [apiClient getEmetteursList];
    sleep(3);
    
    NSDictionary *emetteurDict1 = [[NSDictionary alloc] initWithDictionary:[iCaceisEmetteurs objectAtIndex:0]];
    NSString *refClient_1 = [emetteurDict1 objectForKey:@"ref_client"];
    NSDictionary *emetteurDict2 = (NSDictionary*)[iCaceisEmetteurs objectAtIndex:1];
    NSString *refClient_2 = [emetteurDict2 objectForKey:@"ref_client"];
    NSDictionary *emetteurDict3 = (NSDictionary*)[iCaceisEmetteurs objectAtIndex:2];
    NSString *refClient_3 = [emetteurDict3 objectForKey:@"ref_client"];
    
   
    [apiClient getActionByRef:refClient_1];
    sleep(1);
    [apiClient getActionByRef:refClient_2];
    sleep(1);
    [apiClient getActionByRef:refClient_3];
    sleep(1);
    [apiClient getStockOptionByRef:refClient_1];
    sleep(1);
    [apiClient getStockOptionByRef:refClient_2];
    sleep(1);
    [apiClient getPagaByRef:refClient_1];
    sleep(1);
    [apiClient getMessagesByRef:refClient_1];
    sleep(1);
    [apiClient getAssembleGenerale];
    sleep(1);
    
    [self performSegueWithIdentifier:@"choixEmetteurs" sender:self];
    
}

@end
