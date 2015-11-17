//
//  DismissSegue.m
//  Caceis
//
//  Created by Ayoub El barji on 17/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "DismissSegue.h"

@implementation DismissSegue

- (void)perform {
    UIViewController *sourceViewController = self.sourceViewController;
    [sourceViewController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}


@end
