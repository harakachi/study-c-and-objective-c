//
//  Appliance.h
//  Appliance
//
//  Created by 原田 勝信 on 2013/07/13.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject
{
    NSString *productName;
    int voltage;
}

//@property (copy, nonatomic) NSString *productName;
@property (nonatomic) int voltage;

//指定イニシャライザ
- (id)initWithProductName:(NSString *)pn;
@end
