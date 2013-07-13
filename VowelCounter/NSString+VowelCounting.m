//
//  NSString+VowelCounting.m
//  VowelCounter
//
//  Created by 原田 勝信 on 2013/07/13.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "NSString+VowelCounting.h"

@implementation NSString (VowelCounting)

- (int)vowelCount
{
    NSCharacterSet *charset = [NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"];
    NSInteger count = [self length];
    int sum =0;
    for (int i=0; i < count; i++) {
        unichar c = [self characterAtIndex:i];
        if ([charset characterIsMember:c]) {
            sum++;
        }
    }
    return sum;
}

@end
