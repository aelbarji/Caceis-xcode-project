//
//  ActionDetail.m
//  Caceis
//
//  Created by Ayoub El barji on 17/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "ActionDetail.h"

@implementation ActionDetail

#pragma mark MTLJSONSerializing

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"libelle": @"libelle",
             @"solde": @"solde",
             @"dateAcquisition": @"date_acquisitions",
             @"valorisation"   : @"valorisation",
             @"etat": @"etat",
             @"issue"   : @"issue"
             };
}

@end