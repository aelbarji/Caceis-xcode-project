//
//  EmetteurTableViewController.m
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "EmetteurTableViewController.h"
#import "EmetteurTableViewCell.h"
#import "Emetteur.h"
#import <Overcoat/Overcoat.h>
#import "CaceisConfig.h"
#import "AppDelegate.h"
#import "DashboardViewController.h"
#import "Action.h"

@interface EmetteurTableViewController ()
{
    NSMutableArray *emetteurs;
    NSMutableArray *arrayAction1;
    NSMutableArray *arrayAction2;
    NSMutableArray *arrayAction3;
    
    int  indexRowSelected ;
}

@end

@implementation EmetteurTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    //Create our client
   [self.tableView setBackgroundView:
     [[UIImageView alloc] initWithImage:
      [UIImage imageNamed:@"fond-2.jpg"]]];
    
   
   /*
    [self.tableView  setBackgroundColor:
     [UIColor colorWithPatternImage:
      [UIImage imageNamed:@"fond-2.jpg"]]];
    */
    
//    CaceisClient *apiClient = [[CaceisClient alloc] initWithURL];
   // NSDictionary* responseDict = (NSDictionary*)[apiClient getEmetteursList];
   // self.emetteurs = [MTLJSONAdapter modelOfClass:[Emetteur class] fromJSONDictionary:responseDict error:nil];
//    self.emetteurs = (NSMutableArray*)[apiClient getEmetteursList];
    
    // contactDict = [array objectAtIndex:0];
    /*
    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    
        CaceisClient *apiClient = [[CaceisClient alloc] initWithBaseURL:[NSURL URLWithString:kBaseURL]];
        //Fetch the movies
        NSString *path = [NSString stringWithFormat:@"getEmetteurs"];
        
        [apiClient GET:path parameters:nil].then(^(OVCResponse *response) {
            
            self.emetteurs = response.result;
            NSLog(@" Response : %@", response.result);
            //        return response.result;
            [self.tableView reloadData];
        });
     
        dispatch_async(dispatch_get_main_queue(), ^{
            //            [HNUtils hideWaitMessage:self.view];
                        [self.tableView reloadData];
        });
     
    });
*/
    emetteurs = [[NSMutableArray alloc] initWithArray: iCaceisEmetteurs];
    arrayAction1 = [[NSMutableArray alloc] initWithArray: iCaceisAction1];

    arrayAction2 = [[NSMutableArray alloc] initWithArray: iCaceisAction2];

    arrayAction3 = [[NSMutableArray alloc] initWithArray: iCaceisAction3];
    
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    int numberOfRows = 0;
    for (NSDictionary *dict in emetteurs) {
        if ([[dict objectForKey:@"etat"]isEqualToString:@"old"]) {
            numberOfRows++;
        }
    }
    return numberOfRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // Configure the cell...
    EmetteurTableViewCell *cell = (EmetteurTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"EmetteurCell"];
    NSDictionary *dict = (emetteurs) [indexPath.row];
    NSDictionary *dictAction ;
    switch (indexPath.row) {
        case 0:
            dictAction = [arrayAction1 objectAtIndex:0];
            break;
        case 1:
            dictAction = [arrayAction2 objectAtIndex:0];
            break;
        case 2:
            dictAction = [arrayAction3 objectAtIndex:0];
            break;
        default:
            break;
    }
    
    Emetteur *emetteur = [MTLJSONAdapter modelOfClass:[Emetteur class] fromJSONDictionary:dict error:nil];
    Action *action = [MTLJSONAdapter modelOfClass:[Action class] fromJSONDictionary:dictAction error:nil];
    NSString *valoLabel = [NSString stringWithFormat:@"%@€",action.valorisationGlobal];

    if (![emetteur.etat isEqualToString:@"new"]) {
        cell.name.text = emetteur.nom;
        cell.cours.text = valoLabel;
        cell.logo.image = [UIImage imageNamed:@"company"];
    }
    
    if (indexPath.row %2 ==0) {
        cell.backgroundColor = [[UIColor alloc]initWithRed:229/255.0 green:230/255.0 blue:231/255.0 alpha:1] ;
//        cell.contentView. = [[UIColor alloc]initWithRed:229/255.0 green:230/255.0 blue:231/255.0 alpha:1] ;
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    indexRowSelected = (int)indexPath.row;
   [self performSegueWithIdentifier:@"Dashboard" sender:self];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"AddEmetteur"]) {
        AddEmetteurViewController *addEmetteurViewController = segue.destinationViewController;
        addEmetteurViewController.delegate = self;
        
    }
    
    if ([segue.identifier isEqualToString:@"Dashboard"]) {
        DashboardViewController *dashboardViewController = segue.destinationViewController;
        dashboardViewController.index = indexRowSelected;
        
    }
}

#pragma mark - protocol methods
- (void) addEmetteurViewController:(AddEmetteurViewController*) controller didSelectEmetteur:(NSString*)clientRef
{

    for (NSMutableDictionary *dict in emetteurs) {
        if ([[dict objectForKey:clientRef]isEqualToString:clientRef]) {
            [dict setObject:@"old" forKey:@"etat"];
        }
    }
    [self.tableView reloadData];
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
