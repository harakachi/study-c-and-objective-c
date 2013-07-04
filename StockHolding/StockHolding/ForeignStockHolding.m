//
//  ForeignStockHolding.m
//  StockHolding
//
//  Created by 原田 勝信 on 2013/07/01.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float)costInDollars
{
    return [super costInDollars] * conversionRate;
}

- (float)valueInDollars
{
    return [super valueInDollars] * conversionRate;
}

@end
