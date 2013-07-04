//
//  Employee.h
//  BMITime
//
//  Created by 原田 勝信 on 2013/07/01.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@class Asset;

@interface Employee : Person
{
    int employeeID;
    NSMutableArray *assets;
}

@property int employeeID;

- (void)addAssetsObject:(Asset *)a;
- (unsigned int)valueOfAssets;

@end
