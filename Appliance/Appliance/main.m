//
//  main.m
//  Appliance
//
//  Created by 原田 勝信 on 2013/07/13.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Appliance *a = [[Appliance alloc] init];
        NSLog(@"a is %@", a);
        
        [a setValue:@"Washing machine" forKey:@"productName"];
//        [a setProductName:@"Washing machine"];
        [a setVoltage:240];
        NSLog(@"a is %@", a);
        NSLog(@"the product name is %@", [a valueForKey:@"productName"]);
        
    }
    return 0;
}

