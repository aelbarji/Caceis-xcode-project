//
//  EmetteurTableViewController.m
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "EmetteurTableViewController.h"
#import "CaceisClient.h"
#import "EmetteurTableViewCell.h"
#import "Emetteur.h"
#import <Overcoat/Overcoat.h>
#import <PromiseKit/PromiseKit.h>

@interface EmetteurTableViewController ()

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
    
    
    // contactDict = [array objectAtIndex:0];
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
       /*
        dispatch_async(dispatch_get_main_queue(), ^{
            //            [HNUtils hideWaitMessage:self.view];
                        [self.tableView reloadData];
        });
        */
    });
    
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

    return [self.emetteurs count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // Configure the cell...
    EmetteurTableViewCell *cell = (EmetteurTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"EmetteurCell"];
    NSDictionary *dict = (self.emetteurs) [indexPath.row];
    Emetteur *emetteur = [MTLJSONAdapter modelOfClass:[Emetteur class] fromJSONDictionary:dict error:nil];
    cell.name.text = emetteur.nom;
    cell.cours.text = emetteur.etat;
    cell.logo.image = [UIImage imageNamed:@"company"];
    
    if (indexPath.row %2 ==0) {
        cell.backgroundColor = [[UIColor alloc]initWithRed:229/255.0 green:230/255.0 blue:231/255.0 alpha:1] ;
//        cell.contentView. = [[UIColor alloc]initWithRed:229/255.0 green:230/255.0 blue:231/255.0 alpha:1] ;
    }
    
    return cell;
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Action Button
- (IBAction)CancelButton:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
