//
//  SPRAppDelegate.m
//  sprintly
//
//  Created by Chad Eubanks on 7/22/14.
//  Copyright (c) 2014 The Code Boutique. All rights reserved.
//

#import "SPRAppDelegate.h"
#import "SPRStatechart.h"
#import "SPRInitializeState.h"

@implementation SPRAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [SPRStatechart goToState:[[SPRInitializeState alloc] init]];
}

@end
