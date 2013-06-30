//
//  main.m
//  DateList
//
//  Created by 原田 勝信 on 2013/06/30.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSDate *tomorrow =
            [now dateByAddingTimeInterval:24 * 60 * 60];
        NSDate *yesterday =
            [now dateByAddingTimeInterval:-24 * 60 * 60];
        /*
        NSArray *dateList = [NSArray arrayWithObjects:now, tomorrow, yesterday, nil];
        NSLog(@"There are %lu dates", [dateList count]);
        NSLog(@"The first date is %@", [dateList objectAtIndex:0]);
        NSLog(@"The third date is %@", [dateList objectAtIndex:2]);
        
        NSUInteger dateCount = [dateList count];
        for (int i=0; i < dateCount; i++) {
            NSDate *d = [dateList objectAtIndex:i];
            NSLog(@"Here is a date: %@", d);
        }
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
         */
        NSMutableArray *dateList = [NSMutableArray array];
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        [dateList insertObject:yesterday atIndex:0];
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        
        [dateList removeObjectAtIndex:0];
        NSLog(@"now the first date is %@", [dateList objectAtIndex:0]);
        
    }
    return 0;
}

