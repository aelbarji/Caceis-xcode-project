//
//  PagaDetail.m
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "PagaDetail.h"

@implementation PagaDetail

#pragma mark MTLJSONSerializing

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"droistRetires": @"droist_retires",
             @"dateAttribution": @"date_attribution",
             @"dateAcquisition": @"date_acquisition",
             @"debutConservation"   : @"debut_conservation",
             @"actionSousJacente": @"action_sousjacente"
             };
}

@end
