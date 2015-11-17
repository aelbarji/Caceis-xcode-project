//
//  Message.h
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface Message : MTLModel<MTLJSONSerializing>

@property (copy, nonatomic, readonly) NSString *libelle;

@property (copy, nonatomic, readonly) NSString *contenu;

@property (copy, nonatomic, readonly) NSString *dateReception;

@property (copy, nonatomic, readonly) NSString *important;

@end
