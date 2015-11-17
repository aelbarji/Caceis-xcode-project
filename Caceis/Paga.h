//
//  Paga.h
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <Mantle/Mantle.h>

@class PagaDetail;

@interface Paga : MTLModel<MTLJSONSerializing>

@property (copy, nonatomic, readonly) NSString *libelle;

@property (copy, nonatomic, readonly) NSString *droits;

@property (copy, nonatomic, readonly) NSString *dateDispo;

@property (strong, nonatomic, readonly) PagaDetail *detail;


@end
