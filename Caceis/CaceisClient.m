//
//  CaceisClient.m
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "CaceisClient.h"
#import "CaceisErrorResponse.h"
#import "Emetteur.h"
#import <Overcoat/Overcoat.h>
#import <PromiseKit/PromiseKit.h>

static NSString * const kBaseURL = @"http://demo5517854.mockable.io/";

@implementation CaceisClient

#pragma mark - Requests

/*
- (NSArray *)fetchEmetteurs:(Emetteur*)emetteur parameters:(NSDictionary *)parameters{
//    NSString *path = [NSString stringWithFormat:@"getEmetteurs/"];
     self = [super initWithBaseURL:[NSURL URLWithString:kBaseURL]];
    //Fetch the movies
    [self GET:@"getEmetteurs" parameters:nil completion:^(OVCResponse *response, NSError *error) {
    NSArray *users = response.result; // Array of Movie objects!
        return users;
}];

}
 */

#pragma mark - OVCHTTPSessionManager

+ (Class)errorModelClass {
    return [CaceisErrorResponse class];
}

+ (NSDictionary *)modelClassesByResourcePath {
    return @{
             @"getEmetteurs/*": [Emetteur class]
             };
}


@end
