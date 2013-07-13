//
//  BNRDocument.h
//  TahDoole
//
//  Created by 原田 勝信 on 2013/07/12.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BNRDocument : NSDocument <NSTableViewDataSource>
{
    NSMutableArray *todoItems;
    IBOutlet NSTableView *itemTableView;
}

- (IBAction)createNewItem:(id)sender;

@end
