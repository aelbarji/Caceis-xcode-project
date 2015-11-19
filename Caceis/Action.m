//
//  action.m
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "Action.h"
#import "ActionDetail.h"
#import <Overcoat/OVCUtilities.h>

@implementation Action

#pragma mark MTLJSONSerializing

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"idAction": @"id",
             @"dateCours": @"date_cours",
             @"valeurCours": @"valeur_cours",
             @"soldeGlobal"   : @"solde_global",
             @"droitsVote": @"droits_de_vote",
             @"valorisationGlobal": @"valorisation_global",
             @"detail"   : @"details"
             };
}

+ (NSValueTransformer *)detailJSONTransformer{
    return [NSValueTransformer mtl_arrayMappingTransformerWithTransformer :[MTLJSONAdapter dictionaryTransformerWithModelClass:[ActionDetail class]]];
}

#pragma mark MTLManagedObjectSerializing
/*

+ (NSString *)managedObjectEntityName {
    return @"Action";
}

+ (NSDictionary *)managedObjectKeysByPropertyKey {
    return [NSDictionary mtl_identityPropertyMapWithModel:self];
}

+ (NSSet *)propertyKeysForManagedObjectUniquing {
    return [NSSet setWithObject:@"identifier"];
}

+ (NSDictionary *)relationshipModelClassesByPropertyKey {
    return @{
             @"detail": [ActionDetail class]
             };
}
*/
@end
