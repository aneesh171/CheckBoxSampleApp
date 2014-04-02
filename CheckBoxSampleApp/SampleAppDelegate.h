//
//  SampleAppDelegate.h
//  CheckBoxSampleApp
//
//  Created by Aneesh@ on 4/1/14.
//  Copyright (c) 2014 Aneesh@. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SampleAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTableView *tableView;
@property (assign) IBOutlet NSDrawer *drawer;

@property (nonatomic,strong) NSArray *array;

- (IBAction)loadDrawer:(id)sender;
- (IBAction)loadTable:(id)sender;

@end
