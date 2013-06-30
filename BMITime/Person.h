//
//  Person.h
//  BMITime
//
//  Created by 原田 勝信 on 2013/06/30.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    //float heightInMeters;
    //int weightInKilos;
}

@property float heightInMeters;
@property int weightInKilos;

- (float)bodyMassindex;

@end
