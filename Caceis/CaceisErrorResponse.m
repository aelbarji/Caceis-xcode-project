//
//  CaceisErrorResponse.m
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "CaceisErrorResponse.h"
#import "CaceisError.h"

@implementation CaceisErrorResponse

- (NSString *)message {
    NSMutableArray *messages = [NSMutableArray array];
    for (CaceisError *error in self.errors) {
        [messages addObject:error.message];
    }
    return [messages componentsJoinedByString:@", "];
}

#pragma mark - MTLJSONSerializing

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{};
}

+ (NSValueTransformer *)errorsJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:[CaceisError class]];
}

@end
