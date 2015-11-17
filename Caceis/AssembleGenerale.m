//
//  AssembleGenerale.m
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "AssembleGenerale.h"

@implementation AssembleGenerale

#pragma mark MTLJSONSerializing

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"titre": @"titre",
             @"latitude": @"latitude",
             @"longitude": @"longitude",
             @"date"   : @"date",
             @"heure"   : @"heure"
             };
}

@end
