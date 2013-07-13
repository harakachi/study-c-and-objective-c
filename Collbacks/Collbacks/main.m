//
//  main.m
//  Collbacks
//
//  Created by 原田 勝信 on 2013/07/06.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Logger *logger = [[Logger alloc] init];
        
        /*
        [[NSNotificationCenter defaultCenter] addObserver:logger
                                                 selector:@selector(zoneChange:)
                                                     name:NSSystemTimeZoneDidChangeNotification
                                                   object:nil];
        */
        
        [[NSNotificationCenter defaultCenter] addObserverForName:NSSystemTimeZoneDidChangeNotification
                                                          object:nil
                                                           queue:nil
                                                      usingBlock:^(NSNotification *note) {
            NSLog(@"The system time zone has changed");
        }];
        
        
        NSURL *url = [NSURL URLWithString:@"http://yahoo.co.jp"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request
                                                                     delegate:logger
                                                             startImmediately:YES];
        
        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                          target:logger
                                                        selector:@selector(sayOuch:)
                                                        userInfo:nil
                                                         repeats:YES];
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}

