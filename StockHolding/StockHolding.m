//
//  StockHolding.m
//  StockHolding
//
//  Created by 原田 勝信 on 2013/06/30.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;

- (float)costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}
- (float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}


@end
