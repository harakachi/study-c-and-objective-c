//
//  Appliance.m
//  Appliance
//
//  Created by 原田 勝信 on 2013/07/13.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

@synthesize productName, voltage;

- (id)init
{
    return [self initWithProductName:@"unknown"];
}

- (id)initWithProductName:(NSString *)pn
{
    self = [super init];
    if (self) {
        productName = pn;
        [self setVoltage:120];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@: %d volts", productName, voltage];
}
@end
