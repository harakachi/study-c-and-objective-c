//
//  BNRAppDelegate.h
//  iTahDoodle
//
//  Created by 原田 勝信 on 2013/07/08.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import <UIKit/UIKit.h>

NSString *docPath(void);

@interface BNRAppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>
{
    UITableView *taskTable;
    UITextField *taskField;
    UIButton *insertButton;
    
    NSMutableArray *tasks;
}

- (void)addTask:(id)sender;

@property (strong, nonatomic) UIWindow *window;

@end
