//
//  SampleAppDelegate.m
//  CheckBoxSampleApp
//
//  Created by Aneesh@ on 4/1/14.
//  Copyright (c) 2014 Aneesh@. All rights reserved.
//

#import "SampleAppDelegate.h"

@implementation SampleAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.array = @[@{@"name":@"Apple",@"selected":[NSNumber numberWithBool:YES]},@{@"name":@"Banana",@"selected":[NSNumber numberWithBool:YES]},@{@"name":@"Guava",@"selected":[NSNumber numberWithBool:NO]}];
}

@end
