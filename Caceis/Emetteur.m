//
//  Emetteur.m
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "Emetteur.h"

@implementation Emetteur

#pragma mark MTLJSONSerializing

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"nom": @"nom",
             @"refClient": @"ref_client",
             @"etat": @"etat"
             };
}

#pragma mark MTLManagedObjectSerializing
/*
+ (NSString *)managedObjectEntityName {
    return @"Emetteur";
}

+ (NSDictionary *)managedObjectKeysByPropertyKey {
    return [NSDictionary mtl_identityPropertyMapWithModel:self];
}

+ (NSSet *)propertyKeysForManagedObjectUniquing {
    return [NSSet setWithObject:@"identifier"];
}

+ (NSDictionary *)relationshipModelClassesByPropertyKey {
    return @{
             @"retweetedStatus": [Emetteur class],
             @"user": [TwitterUser class]
             };
}
*/
@end
