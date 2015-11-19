//
//  CaceisConfig.h
//  Caceis
//
//  Created by Ayoub El barji on 17/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

// ==================  API CLIENT  =====================
// -- URL
#define CaceisMock_url_Main                         @"http://demo5517854.mockable.io/"
#define CaceisMock_Emetteurs_path                   [NSString stringWithFormat:@"getEmetteurs"]
#define CaceisMock_Action_path                      [NSString stringWithFormat:@"getActionByRef/"]
#define CaceisMock_Stock_path                       [NSString stringWithFormat:@"getStockOptionByRef/"]
#define CaceisMock_Paga_path                        [NSString stringWithFormat:@"getPagaByRef/"]
#define CaceisMock_Message_path                     [NSString stringWithFormat:@"getMessagesByRef/"]
#define CaceisMock_AG_path                          [NSString stringWithFormat:@"getAssembleGenerale"]

// ==================  MACROS  =====================
// -- common global definitions
#define iCaceisDelegate                     (AppDelegate *)[[UIApplication sharedApplication] delegate]
#define iCaceisEmetteurs                    [iCaceisDelegate emetteursArray]
#define iCaceisAction1                      [iCaceisDelegate actionArray_1]
#define iCaceisAction2                      [iCaceisDelegate actionArray_2]
#define iCaceisAction3                      [iCaceisDelegate actionArray_3]
#define iCaceisStock1                       [iCaceisDelegate stockArray_1]
#define iCaceisStock2                       [iCaceisDelegate stockArray_2]
#define iCaceisPaga                         [iCaceisDelegate pagaArray]
#define iCaceisMessages                     [iCaceisDelegate messagesArray]
#define iCaceisAG                           [iCaceisDelegate assembleArray]




