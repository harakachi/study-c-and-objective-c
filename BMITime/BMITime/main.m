//
//  main.m
//  BMITime
//
//  Created by 原田 勝信 on 2013/06/30.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Person *person = [[Person alloc] init];
        
        [person setWeightInKilos:58];
        [person setHeightInMeters:1.6];
        
        float bmi = [person bodyMassindex];
        NSLog(@"person (%d, %.2f) has a BMI of %f", [person weightInKilos], [person heightInMeters], bmi);
    }
    return 0;
}

