//
//  DateHelper.m
//  Caceis
//
//  Created by Ayoub El barji on 19/11/2015.
//  Copyright © 2015 Groupehn. All rights reserved.
//

#import "DateHelper.h"

@implementation DateHelper


+(NSString *)monthStringFrom:(NSUInteger)number
{
    NSString *monthString = nil;
    switch (number) {
        case 1:
        {
            // monthString = @"January";
            monthString = @"JAN";
        }
            break;
        case 2:
        {
            // monthString = @"February";
            monthString = @"FEV";
        }
            break;
        case 3:
        {
            // monthString = @"March";
            monthString = @"MAR";
        }
            break;
        case 4:
        {
            // monthString = @"April";
            monthString = @"AVR";
        }
            break;
        case 5:
        {
            // monthString = @"May";
            monthString = @"MAI";
            
        }
            break;
        case 6:
        {
            // monthString = @"June";
            monthString = @"JUIN";
            
        }
            break;
        case 7:
        {
            // monthString = @"July";
            monthString = @"JUIL";
            
        }
            break;
        case 8:
        {
            // monthString = @"August";
            monthString = @"AOÛT";
            
        }
            break;
        case 9:
        {
            // monthString = @"September";
            monthString = @"SEP";
            
        }
            break;
        case 10:
        {
            // monthString = @"October";
            monthString = @"OCT";
            
        }
            break;
        case 11:
        {
            // monthString = @"November";
            monthString = @"NOV";
            
        }
            break;
        case 12:
        {
            // monthString = @"December";
            monthString = @"DEC";
            
        }
            break;
        default:
            break;
    }
    return monthString;
}


@end
