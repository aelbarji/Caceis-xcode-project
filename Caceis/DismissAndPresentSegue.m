//
//  DismissAndPresentSegue.m
//  Caceis
//
//  Created by Ayoub El barji on 17/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "DismissAndPresentSegue.h"

@implementation DismissAndPresentSegue

- (IBAction)unwindToRed:(UIStoryboardSegue *)unwindSegue
{
    UIViewController* sourceViewController = unwindSegue.sourceViewController;
    
    /*
    if ([sourceViewController isKindOfClass:[BlueViewController class]])
    {
        NSLog(@"Coming from BLUE!");
    }
    else if ([sourceViewController isKindOfClass:[GreenViewController class]])
    {
        NSLog(@"Coming from GREEN!");
    }
     */
}

@end
