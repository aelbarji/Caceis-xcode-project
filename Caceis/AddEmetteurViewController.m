//
//  AddEmetteurViewController.m
//  Caceis
//
//  Created by Ayoub El barji on 18/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "AddEmetteurViewController.h"
#import "EmetteurTableViewCell.h"
#import <Overcoat/Overcoat.h>
#import "AppDelegate.h"
#import "CaceisConfig.h"

@interface AddEmetteurViewController ()
{
    NSMutableArray *emetteurs;
}

@end

@implementation AddEmetteurViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView setBackgroundView:[[UIImageView alloc] initWithImage: [UIImage imageNamed:@"fond-2.jpg"]]];
    emetteurs = [[NSMutableArray alloc] initWithArray: iCaceisEmetteurs];
    
    NSMutableIndexSet *indexesToDelete = [NSMutableIndexSet indexSet];
    NSUInteger currentIndex = 0;
    
    for (NSDictionary *dict in emetteurs) {
        //do stuff with obj
        if ([[dict objectForKey:@"etat"]isEqualToString:@"old"]) {
            [indexesToDelete addIndex:currentIndex];
        }
        currentIndex++;
    }
    
    [emetteurs removeObjectsAtIndexes:indexesToDelete];
    
    //delete empty rows
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Action Button
- (IBAction)CancelButton:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  
    return [emetteurs count];

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    EmetteurTableViewCell *cell = (EmetteurTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"EmetteurCell"];
    NSDictionary *dict = (emetteurs) [indexPath.row];
    Emetteur *emetteur = [MTLJSONAdapter modelOfClass:[Emetteur class] fromJSONDictionary:dict error:nil];
    

    cell.name.text = emetteur.nom;
//    cell.cours.text = emetteur.etat;
    cell.logo.image = [UIImage imageNamed:@"company"];
    
    
    if (indexPath.row %2 ==0) {
        cell.backgroundColor = [[UIColor alloc]initWithRed:229/255.0 green:230/255.0 blue:231/255.0 alpha:1] ;
        //        cell.contentView. = [[UIColor alloc]initWithRed:229/255.0 green:230/255.0 blue:231/255.0 alpha:1] ;
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSDictionary *dict = (emetteurs)[indexPath.row];
    NSString  *clientRef = [dict objectForKey:@"ref_client"];
    [self.delegate addEmetteurViewController:self didSelectEmetteur:clientRef];
}


@end
