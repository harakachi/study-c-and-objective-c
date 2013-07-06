//
//  Logger.h
//  Collbacks
//
//  Created by 原田 勝信 on 2013/07/06.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject
{
    NSMutableData *incomingData;
}
- (void)sayOuch:(NSTimer *)t;

@end
