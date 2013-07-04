//
//  Asset.h
//  BMITime
//
//  Created by 原田 勝信 on 2013/07/01.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Employee;

@interface Asset : NSObject
{
    NSString *label;
    __weak Employee *holder;
    unsigned int resaleValue;
}

@property (strong) NSString *label;
@property (weak) Employee *holder;
@property unsigned int resaleValue;

@end
