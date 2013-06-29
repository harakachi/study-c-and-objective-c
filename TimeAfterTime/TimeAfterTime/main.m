//
//  main.m
//  TimeAfterTime
//
//  Created by 原田 勝信 on 2013/06/25.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"The new date lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSDayCalendarUnit
                                        inUnit:NSMonthCalendarUnit
                                       forDate:now];
        NSLog(@"This is day %lu of the month", day);
        
        // Challenge
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1980];
        [comps setMonth:9];
        [comps setDay:18];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        double d = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"interval = %f", d);
        
        // challenge section 13
        NSTimeZone *tz = [NSTimeZone systemTimeZone];
        NSLog(@"this timezone a summertime %@\n", [tz isDaylightSavingTime] ? @"YES" : @"NO");
        
        // challenge section 14
        NSHost *host = [NSHost currentHost];
        NSString *localname = [host localizedName];
        NSLog(@"This computer localname is %@\n", localname);
    }
    return 0;
}

