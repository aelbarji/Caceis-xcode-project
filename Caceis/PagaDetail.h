//
//  PagaDetail.h
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface PagaDetail : MTLModel<MTLJSONSerializing>

@property (copy, nonatomic, readonly) NSString *droitsRetires;

@property (copy, nonatomic, readonly) NSString *dateAttribution;

@property (copy, nonatomic, readonly) NSString *dateAcquisition;

@property (copy, nonatomic, readonly) NSString *debutConservation;

@property (copy, nonatomic, readonly) NSString *actionSousJacente;


@end
