//
//  SPRInitializeState.m
//  sprintly
//
//  Created by Chad Eubanks on 7/24/14.
//  Copyright (c) 2014 The Code Boutique. All rights reserved.
//

#import "SPRInitializeState.h"
#import "SPRRootContainerView.h"
#import "SPRStatechart.h"
#import "SPRLoginState.h"

@implementation SPRInitializeState

- (void)enterState
{
    [self setApplicationDelegate:[NSApp delegate]];
    [self designApplicationWindow];
}

- (void)designApplicationWindow
{
    NSSize minSize;
    minSize.width = 500.0f;
    minSize.height = 500.0f;
    [[[self applicationDelegate] window] setMinSize:minSize];
    
    [self createRootContainerViewController];
}


- (void)createRootContainerViewController
{
    [[self applicationDelegate] setRootContainerViewController:[[SPRRootContainerViewController alloc]
                                                                initWithViewName:[SPRRootContainerView new]]];
    
    [self designRootContainerViewController];
}

- (void)designRootContainerViewController
{
    CGRect updatedFrame = [[[self applicationDelegate] window] frame];
    updatedFrame.origin.y = 0.0f;
    updatedFrame.origin.x = 0.0f;
    
    [[[[self applicationDelegate] rootContainerViewController] view] setFrame:updatedFrame];
    [[[[self applicationDelegate] rootContainerViewController] view] setAutoresizingMask: NSViewWidthSizable | NSViewHeightSizable];
    
    [self appendRootContainerViewController];
}

- (void)appendRootContainerViewController
{
    [[[[self applicationDelegate] window] contentView] addSubview: [[[self applicationDelegate] rootContainerViewController] view]];
    
    [self goToLoginState];
}

- (void)goToLoginState
{
    [SPRStatechart goToState:[[SPRLoginState alloc] init]];
}

- (void)exitState
{
    
}

@end
