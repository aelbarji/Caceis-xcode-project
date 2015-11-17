//
//  CaceisErrorResponse.h
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface CaceisErrorResponse : MTLModel<MTLJSONSerializing>

@property (copy, nonatomic, readonly) NSArray *errors;

- (NSString *)message;


@end
