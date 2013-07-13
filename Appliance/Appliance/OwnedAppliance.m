//
//  OwnedAppliance.m
//  Appliance
//
//  Created by 原田 勝信 on 2013/07/13.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "OwnedAppliance.h"

@implementation OwnedAppliance

- (id)initWithProductName:(NSString *)pn
{
    return [self initWithProductName:pn firstOwnerName:nil];
}

- (id)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n
{
    self = [super initWithProductName:pn];
    if (self) {
        ownerNames = [[NSMutableSet alloc] init];
        if (n) {
            [ownerNames addObject:n];
        }
    }
    return self;
}

- (void)addOwnerNamesObject:(NSString *)n
{
    [ownerNames addObject:n];
}

- (void)removeOwnerNamesObject:(NSString *)n
{
    [ownerNames removeObject:n];
}

@end
