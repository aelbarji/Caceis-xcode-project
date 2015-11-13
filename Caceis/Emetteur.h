//
//  Emetteur.h
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface Emetteur : MTLModel <MTLJSONSerializing>

@property (copy, nonatomic, readonly) NSString *nom;

@property (copy, nonatomic, readonly) NSString *refClient;

@property (copy, nonatomic, readonly) NSString *etat;


@end
