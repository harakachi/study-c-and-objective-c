//
//  main.m
//  BMITime
//
//  Created by 原田 勝信 on 2013/06/30.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        for (int i=0; i < 10; i++) {
            Employee *person = [[Employee alloc] init];
            [person setWeightInKilos:58+i];
            [person setHeightInMeters:1.6*i];
            [person setEmployeeID:i];
            [employees addObject:person];
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        for (int i=0; i < 10; i++) {
            Asset *assets = [[Asset alloc] init];
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [assets setLabel:currentLabel];
            [assets setResaleValue:i *17];
            
            NSUInteger randomIndex = random() % [employees count];
            
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            [randomEmployee addAssetsObject:assets];
            [allAssets addObject:assets];
        }
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        
        NSLog(@"allAssets: %@", allAssets);
        
        allAssets = nil;
        employees = nil;
        //float bmi = [person bodyMassindex];
        //NSLog(@"person (%d, %.2f) has a BMI of %f", [person weightInKilos], [person heightInMeters], bmi);
        //NSLog(@"Employee %d has a BMI of %f", [person employeeID], bmi);
        
    }
    sleep(100);
    return 0;
}

