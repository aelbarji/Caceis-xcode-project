//
//  Paga.m
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "Paga.h"
#import "PagaDetail.h"

@implementation Paga

#pragma mark MTLJSONSerializing

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"libelle": @"libelle",
             @"droits": @"droits",
             @"dateDispo": @"date_dispo",
             @"detail"   : @"detail"
             };
}

+ (NSValueTransformer *)detailJSONTransformer{
    return [NSValueTransformer mtl_arrayMappingTransformerWithTransformer :[MTLJSONAdapter dictionaryTransformerWithModelClass:[PagaDetail class]]];
}

#pragma mark MTLManagedObjectSerializing
/*
 
 + (NSString *)managedObjectEntityName {
 return @"Paga";
 }
 
 + (NSDictionary *)managedObjectKeysByPropertyKey {
 return [NSDictionary mtl_identityPropertyMapWithModel:self];
 }
 
 + (NSSet *)propertyKeysForManagedObjectUniquing {
 return [NSSet setWithObject:@"identifier"];
 }
 
 + (NSDictionary *)relationshipModelClassesByPropertyKey {
 return @{
 @"detail": [PagaDetail class]
 };
 }
 */

@end
