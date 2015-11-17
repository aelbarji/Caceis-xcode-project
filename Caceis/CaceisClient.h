//
//  CaceisClient.h
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <Overcoat/OVCHTTPSessionManager.h>
#import <UIKit/UIKit.h>
#import "Emetteur.h"

@interface CaceisClient : OVCHTTPSessionManager

/**
 Fetches a collection of tweets, ordered with the most recent first.
 
 @param timeline The type of timeline.
 @param parameters - The parameters for the request.
 
 @return A `Promise` that will `then` an array of `Tweet` objects.
 */
//- (NSArray *)fetchEmetteurs:(Emetteur*)emetteur parameters:(NSDictionary *)parameters;



@end
