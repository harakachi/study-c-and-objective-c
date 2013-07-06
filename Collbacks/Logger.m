//
//  Logger.m
//  Collbacks
//
//  Created by 原田 勝信 on 2013/07/06.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Logger.h"

@implementation Logger

- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"The system time zone has changed");
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    if (!incomingData) {
        incomingData = [[NSMutableData alloc] init];
    }
    [incomingData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Get it Goal");
    NSString *string = [[NSString alloc] initWithData:incomingData encoding:NSUTF8StringEncoding];
    incomingData = nil;
    NSLog(@"string has %lu char", [string length]);
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"Connection failed. %@", [error localizedDescription]);
    incomingData = nil;
}


- (void)sayOuch:(NSTimer *)t
{
    NSLog(@"Ouch!");
}

@end
