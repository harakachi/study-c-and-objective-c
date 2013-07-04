//
//  main.m
//  StockHolding
//
//  Created by 原田 勝信 on 2013/06/30.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ForeignStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        StockHolding *a = [[StockHolding alloc] init];
        [a setPurchaseSharePrice:2.30];
        [a setCurrentSharePrice:4.50];
        [a setNumberOfShares:40];
        
        StockHolding *b = [[StockHolding alloc] init];
        [b setPurchaseSharePrice:12.19];
        [b setCurrentSharePrice:10.56];
        [b setNumberOfShares:90];
        
        ForeignStockHolding *c = [[ForeignStockHolding alloc] init];
        [c setPurchaseSharePrice:45.10];
        [c setCurrentSharePrice:49.51];
        [c setNumberOfShares:210];
        [c setConversionRate:0.94];
        
        NSMutableArray *array = [[NSMutableArray alloc] init];
        [array addObject:a];
        [array addObject:b];
        [array addObject:c];
        
        for (StockHolding *s in array) {
            NSLog(@"cost in dollars = %f, value in sollars = %f", [s costInDollars], [s valueInDollars]);
        }
        
    }
    return 0;
}

