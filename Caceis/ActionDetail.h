//
//  ActionDetail.h
//  Caceis
//
//  Created by Ayoub El barji on 17/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface ActionDetail : MTLModel<MTLJSONSerializing>

@property (copy, nonatomic, readonly) NSString *libelle;

@property (copy, nonatomic, readonly) NSString *solde;

@property (copy, nonatomic, readonly) NSString *dateAcquisition;

@property (copy, nonatomic, readonly) NSString *valorisation;

@property (copy, nonatomic, readonly) NSString *etat;

@property (copy, nonatomic, readonly) NSString *issue;

@end