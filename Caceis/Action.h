//
//  Action.h
//  Caceis
//
//  Created by Ayoub El barji on 17/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <Mantle/Mantle.h>

@class ActionDetail;

@interface Action : MTLModel<MTLJSONSerializing>

@property (copy, nonatomic, readonly) NSString *idAction;

@property (copy, nonatomic, readonly) NSString *dateCours;

@property (copy, nonatomic, readonly) NSString *valeurCours;

@property (copy, nonatomic, readonly) NSString *soldeGlobal;

@property (copy, nonatomic, readonly) NSString *droitsVote;

@property (copy, nonatomic, readonly) NSString *valorisationGlobal;

@property (strong, nonatomic, readonly) ActionDetail *detail;

@end
