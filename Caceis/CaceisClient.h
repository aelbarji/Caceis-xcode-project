//
//  CaceisClient.h
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <Overcoat/OVCHTTPSessionManager.h>
#import <Overcoat/Overcoat.h>
#import <UIKit/UIKit.h>
#import <Promisekit/Promisekit.h>
#import "Emetteur.h"
#import "Action.h"
#import "StockOption.h"
#import "Paga.h"
#import "Message.h"
#import "AssembleGenerale.h"


@interface CaceisClient : OVCHTTPSessionManager

/**
 Fetches a collection of tweets, ordered with the most recent first.
 
 @param timeline The type of timeline.
 @param parameters - The parameters for the request.
 
 @return A `Promise` that will `then` an array of `Tweet` objects.
 */
- (id)initWithURL;
- (void)getEmetteursList;
- (void) getActionByRef : (NSString*) ref;
- (void) getStockOptionByRef : (NSString*) ref;
- (void) getPagaByRef : (NSString*) ref;
- (void) getMessagesByRef : (NSString*) ref;
- (void) getAssembleGenerale;



@end
