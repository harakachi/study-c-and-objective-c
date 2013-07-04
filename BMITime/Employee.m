//
//  Employee.m
//  BMITime
//
//  Created by 原田 勝信 on 2013/07/01.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeID;

- (void)addAssetsObject:(Asset *)a
{
    if (!assets) {
        assets = [[NSMutableArray alloc] init];
    }
    [assets addObject:a];
    [a setHolder:self];
}

- (unsigned int)valueOfAssets
{
    unsigned int sum = 0;
    
    for (Asset *a in assets) {
        sum += [a resaleValue];
    }
    return sum;
}


- (float)bodyMassindex
{
    float nomalBMI = [super bodyMassindex];
    return nomalBMI * 0.9;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d: $%d in Assets>", [self employeeID], [self valueOfAssets]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
