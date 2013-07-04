//
//  ForeignStockHolding.h
//  StockHolding
//
//  Created by 原田 勝信 on 2013/07/01.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding
{
    float conversionRate;
}

@property float conversionRate;

@end
