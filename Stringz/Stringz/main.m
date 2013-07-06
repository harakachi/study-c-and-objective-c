//
//  main.m
//  Stringz
//
//  Created by 原田 勝信 on 2013/07/06.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableString *str = [[NSMutableString alloc] init];
        
        for (int i=0; i < 10; i++) {
            [str appendString:@"Aarin is cool!\n"];
        }
        
        NSError *error = nil;
        
        BOOL success = [str writeToFile:@"/tmpndaslnfisau/cool.txt"
              atomically:YES
                encoding:NSUTF8StringEncoding
                   error:&error];
        if (success) {
            NSLog(@"done writing /tmp/cool.txt");
        } else {
            NSLog(@"writing /tmp/cool.txt faild: %@", [error localizedDescription]);
            
        }
        
    }
    return 0;
}

