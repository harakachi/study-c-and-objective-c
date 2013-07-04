//
//  Asset.m
//  BMITime
//
//  Created by 原田 勝信 on 2013/07/01.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset

@synthesize label, holder, resaleValue;

- (NSString *)description
{
    if ([self holder]) {
        return [NSString stringWithFormat:@"<%@: $%d assigned to %@>",
                [self label], [self resaleValue], [self holder]];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unsigned>", [self label], [self resaleValue]];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
