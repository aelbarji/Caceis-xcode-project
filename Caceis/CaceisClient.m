//
//  CaceisClient.m
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "CaceisClient.h"
#import "CaceisConfig.h"
#import "CaceisErrorResponse.h"
#import "EmetteurTableViewController.h"
#import "AppDelegate.h"


@implementation CaceisClient

#pragma mark - Lifecycle

- (id)initWithURL{
    self = [super initWithBaseURL:[NSURL URLWithString:CaceisMock_url_Main]];
    return self;
}

#pragma mark - Requests

- (void) getEmetteursList{
    
    [self GET:CaceisMock_Emetteurs_path parameters:nil].then(^(OVCResponse *response) {
        NSMutableArray *emetteurs = response.result;
        [iCaceisEmetteurs addObjectsFromArray:emetteurs] ;
    });
}

- (void) getActionByRef : (NSString*) ref{

    NSString *allPath = [NSString stringWithFormat:@"%@%@",CaceisMock_Action_path,ref];
    [self GET:allPath parameters:nil].then(^(OVCResponse *response) {
        NSMutableArray *actions = response.result;
        if ([ref isEqualToString:@"99123456/69"]) {
            [iCaceisAction1 addObjectsFromArray:actions];
        }
        if ([ref isEqualToString:@"99963514/2"]) {
            [iCaceisAction2 addObjectsFromArray:actions];
        }else {
            [iCaceisAction3 addObjectsFromArray:actions];
        }
        
    });
}

- (void) getStockOptionByRef : (NSString*) ref{
    
   NSString *allPath = [NSString stringWithFormat:@"%@%@",CaceisMock_Stock_path,ref];
    
    [self GET:allPath parameters:nil].then(^(OVCResponse *response) {
        NSMutableArray *stocks = response.result;
        if ([ref isEqualToString:@"99963514/2"]) {
            [iCaceisStock2 addObjectsFromArray:stocks];
        }else {
            [iCaceisStock1 addObjectsFromArray:stocks];
        }
    });
}

- (void) getPagaByRef : (NSString*) ref{
    
    NSString *allPath = [NSString stringWithFormat:@"%@%@",CaceisMock_Paga_path,ref];
    
    [self GET:allPath parameters:nil].then(^(OVCResponse *response) {
        NSMutableArray *paga = response.result;
        [iCaceisPaga addObjectsFromArray:paga] ;
    });
}

- (void) getMessagesByRef : (NSString*) ref{
    
   NSString *allPath = [NSString stringWithFormat:@"%@%@",CaceisMock_Message_path,ref];
    
    [self GET:allPath parameters:nil].then(^(OVCResponse *response) {
        NSMutableArray *messages = response.result;
        [iCaceisMessages addObjectsFromArray:messages] ;
    });
}

- (void) getAssembleGenerale {
    
    [self GET:CaceisMock_AG_path parameters:nil].then(^(OVCResponse *response) {
        NSMutableDictionary *assembleGenerale = response.result;
        [iCaceisAG setDictionary:assembleGenerale] ;
    });
}

#pragma mark - OVCHTTPSessionManager

+ (Class)errorModelClass {
    return [CaceisErrorResponse class];
}

+ (NSDictionary *)modelClassesByResourcePath {
    return @{
             @"getEmetteurs/*": [Emetteur class],
             @"getActionByRef/*" : [Action class],
             @"getStockOptionByRef/*" : [StockOption class],
             @"getPagaByRef/*" : [Paga class],
             @"getMessagesByRef/*" : [Message class],
             @"getAssembleGenerale/*" : [AssembleGenerale class]
             };
}


@end
