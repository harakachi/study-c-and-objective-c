//
//  Person.m
//  BMITime
//
//  Created by 原田 勝信 on 2013/06/30.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

- (float)bodyMassindex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}
@end
