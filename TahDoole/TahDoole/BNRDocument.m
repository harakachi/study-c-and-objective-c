//
//  BNRDocument.m
//  TahDoole
//
//  Created by 原田 勝信 on 2013/07/12.
//  Copyright (c) 2013年 原田 勝信. All rights reserved.
//

#import "BNRDocument.h"

@implementation BNRDocument

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

- (IBAction)createNewItem:(id)sender
{
    if (!todoItems) {
        todoItems = [NSMutableArray array];
    }
    
    [todoItems addObject:[NSString stringWithFormat:@"New item %d", rand()]];
    [itemTableView reloadData];
    [self updateChangeCount:NSChangeDone];
}

- (IBAction)deleteItem:(id)sender
{
    if (!todoItems) {
        return;
    }
    NSInteger index = [itemTableView selectedRow];
    if (index < 0) {
        return;
    }
    [todoItems removeObjectAtIndex:index];
    [itemTableView reloadData];
    [self updateChangeCount:NSChangeDone];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return [todoItems count];
}
- (id)tableView:(NSTableView *)tableView
    objectValueForTableColumn:(NSTableColumn *)tableColumn
                          row:(NSInteger)row
{
    return [todoItems objectAtIndex:row];
}
- (void)tableView:(NSTableView *)tableView
    setObjectValue:(id)object
    forTableColumn:(NSTableColumn *)tableColumn
               row:(NSInteger)row
{
    [todoItems replaceObjectAtIndex:row withObject:object];
    [self updateChangeCount:NSChangeDone];
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"BNRDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    /*
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return nil;
    */
    if (!todoItems) {
        todoItems = [[NSMutableArray alloc] init];
    }
    
    NSData *data = [NSPropertyListSerialization dataWithPropertyList:todoItems
                                                              format:NSPropertyListXMLFormat_v1_0
                                                             options:0
                                                               error:outError];
    return data;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    // If you override either of these, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
    /*
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return YES;
    
    */
    todoItems = [NSPropertyListSerialization propertyListWithData:data
                                                          options:NSPropertyListMutableContainers
                                                           format:NULL
                                                            error:outError];
    return (todoItems != nil);
}

@end
