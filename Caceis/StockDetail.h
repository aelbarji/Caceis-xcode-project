//
//  StockDetail.h
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface StockDetail : MTLModel<MTLJSONSerializing>

@property (copy, nonatomic, readonly) NSString *brutVente;

@property (copy, nonatomic, readonly) NSString *montantLevee;

@property (copy, nonatomic, readonly) NSString *fraisVente;

@property (copy, nonatomic, readonly) NSString *netARecevoir;

@property (copy, nonatomic, readonly) NSString *actionSousJacente;

@property (copy, nonatomic, readonly) NSString *debutPlan;

@property (copy, nonatomic, readonly) NSString *finPlan;

@end
