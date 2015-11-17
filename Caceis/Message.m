//
//  Message.m
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "Message.h"

@implementation Message

#pragma mark MTLJSONSerializing

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"libelle": @"libelle",
             @"contenu": @"contenu",
             @"dateReception": @"date_reception",
             @"important"   : @"important"
             };
}

@end
