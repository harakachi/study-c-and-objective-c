//
//  main.m
//  VowelMovement
//
//  Created by 原田 勝信 on 2013/07/13.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSArray *oldStrings = [NSArray arrayWithObjects:@"hurln", @"autoyanej", @"nljnjnroapc,m",
                                  @"al;fsao", nil];
        NSLog(@"OLD String: %@", oldStrings);
        
        NSMutableArray *newStrings = [NSMutableArray array];
        NSArray *vowels = [NSArray arrayWithObjects:@"a", @"i", @"u", @"e", @"o", nil];
        
        [oldStrings enumerateObjectsUsingBlock:^(id string, NSUInteger i, BOOL *stop) {
            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            if (yRange.location != NSNotFound) {
                *stop = YES;
                return;
            }
            NSMutableString *newString = [NSMutableString stringWithString:string];
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            [newStrings addObject:newString];
        }];
        NSLog(@"New Strings: %@", newStrings);
    }
    return 0;
}

