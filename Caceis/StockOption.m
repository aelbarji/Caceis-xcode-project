//
//  StockOption.m
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "StockOption.h"
#import "StockDetail.h"

@implementation StockOption

#pragma mark MTLJSONSerializing

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"libelle": @"libelle",
             @"dateCours": @"date_cours",
             @"valeurCours": @"valeur_cours",
             @"prixExercice"   : @"prix_exercice",
             @"disponible": @"disponible",
             @"indisponible": @"indisponible",
             @"detail"   : @"detail"
             };
}


+ (NSValueTransformer *)detailJSONTransformer{
    return [NSValueTransformer mtl_arrayMappingTransformerWithTransformer :[MTLJSONAdapter dictionaryTransformerWithModelClass:[StockDetail class]]];
}
#pragma mark MTLManagedObjectSerializing
/*
 
 + (NSString *)managedObjectEntityName {
 return @"StockOption";
 }
 
 + (NSDictionary *)managedObjectKeysByPropertyKey {
 return [NSDictionary mtl_identityPropertyMapWithModel:self];
 }
 
 + (NSSet *)propertyKeysForManagedObjectUniquing {
 return [NSSet setWithObject:@"identifier"];
 }
 
 + (NSDictionary *)relationshipModelClassesByPropertyKey {
 return @{
 @"detail": [StockDetail class]
 };
 }
 */

@end
