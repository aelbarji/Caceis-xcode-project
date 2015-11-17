//
//  StockOption.h
//  Caceis
//
//  Created by Ayoub El barji on 13/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import <Mantle/Mantle.h>

@class StockDetail;

@interface StockOption : MTLModel<MTLJSONSerializing>

@property (copy, nonatomic, readonly) NSString *libelle;

@property (copy, nonatomic, readonly) NSString *dateCours;

@property (copy, nonatomic, readonly) NSString *valeurCours;

@property (copy, nonatomic, readonly) NSString *prixExercice;

@property (copy, nonatomic, readonly) NSString *disponible;

@property (copy, nonatomic, readonly) NSString *indisponible;

@property (strong, nonatomic, readonly) StockDetail *detail;


@end
