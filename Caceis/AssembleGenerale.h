//
//  AssembleGenerale.h
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface AssembleGenerale : MTLModel<MTLJSONSerializing>

@property (copy, nonatomic, readonly) NSString *titre;

@property (copy, nonatomic, readonly) NSString *latitude;

@property (copy, nonatomic, readonly) NSString *longitude;

@property (copy, nonatomic, readonly) NSString *date;

@property (copy, nonatomic, readonly) NSString *heure;


@end
