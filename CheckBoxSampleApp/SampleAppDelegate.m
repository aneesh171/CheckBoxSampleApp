//
//  SampleAppDelegate.m
//  CheckBoxSampleApp
//
//  Created by Aneesh@ on 4/1/14.
//  Copyright (c) 2014 Aneesh@. All rights reserved.
//

#import "SampleAppDelegate.h"
#import "FruitModel.h"

@implementation SampleAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{

}

// This is where you need to create a model.
- (void)createModel
{
    FruitModel *model = [[FruitModel alloc] init];
    [model setValue:@"Apple" forKey:@"name"];
    [model setValue:[NSNumber numberWithInt:1] forKey:@"selected"];
    
    FruitModel *model1 = [[FruitModel alloc] init];
    [model1 setValue:@"Banana" forKey:@"name"];
    [model1 setValue:[NSNumber numberWithInt:1] forKey:@"selected"];
    
    FruitModel *model2 = [[FruitModel alloc] init];
    [model2 setValue:@"Guava" forKey:@"name"];
    [model2 setValue:[NSNumber numberWithInt:0] forKey:@"selected"];
    
    self.array = [[NSMutableArray alloc] init];

    [self.array addObject:model];
    [self.array addObject:model1];
    [self.array addObject:model2];
}

- (IBAction)loadTable:(id)sender

{    // Handle this where the data is available.
    // The getter/setter are required to make the KVO compliant
    [self createModel];
    
    [self.arrayController setContent:self.array];
    
//    self.array = @[@{@"name":@"Apple",@"selected":[NSNumber numberWithBool:YES]},@{@"name":@"Banana",@"selected":[NSNumber numberWithBool:YES]},@{@"name":@"Guava",@"selected":[NSNumber numberWithBool:NO]}];
    
    [self.tableView reloadData];
}

- (IBAction)loadDrawer:(id)sender
{
    [self.drawer open];
}

- (IBAction)somethingSelected:(id)sender
{
    NSInteger row = [self.tableView rowForView:[sender superview]];
    
    NSString *str = nil;
    
    str = [[self.array objectAtIndex:row] name];
    
    if ([[[self.array objectAtIndex:row] selected] boolValue])
    {
        NSLog(@"%@ was selected", str);
    }
    else
    {
        NSLog(@"%@ selection was removed", str);
    }
}

@end
