//
//  StockDetail.m
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "StockDetail.h"

@implementation StockDetail


#pragma mark MTLJSONSerializing

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"brutVente": @"brut_de_vente",
             @"montantLevee": @"montant_levee",
             @"fraisVente": @"frais_de_vente",
             @"netARecevoir"   : @"net_a_recevoir",
             @"actionSousJacente": @"action_sousjacente",
             @"debutPlan"   : @"debut_plan",
             @"finPlan"   : @"fin_plan"
             };
}

@end
