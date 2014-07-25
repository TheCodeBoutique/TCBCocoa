//
//  SPRLoginState.m
//  sprintly
//
//  Created by Chad Eubanks on 7/22/14.
//  Copyright (c) 2014 The Code Boutique. All rights reserved.
//

#import "SPRStatechart.h"
#import "SPRLoginState.h"
#import "SPRLoginView.h"
#import "SPRRootContainerView.h"
#import "SPRDashboardState.h"

@implementation SPRLoginState

- (void)enterState
{
    [self setApplicationDelegate:[NSApp delegate]];
    [self createLoginViewController];
}

- (void)createLoginViewController
{
    [self setLoginViewController:[[SPRLoginViewController alloc] initWithViewName:[SPRLoginView new]]];
    [self designLoginViewController];
}

- (void)designLoginViewController
{
    CGRect windowFrame = [[[self applicationDelegate] window] frame];
    CGRect updatedFrame = CGRectZero;
    updatedFrame.size.height = 200.0f;
    updatedFrame.size.width = 300.0f;
    
    updatedFrame.origin.x = CGRectGetWidth(windowFrame) / 2 - 150;
    updatedFrame.origin.y = CGRectGetHeight(windowFrame) / 2 - 100;
    [[[self loginViewController] view] setFrame:updatedFrame];
    [[[self loginViewController] view] setAutoresizingMask:NSViewNotSizable| NSViewMaxYMargin | NSViewMaxXMargin | NSViewMinYMargin | NSViewMinXMargin];
    
    [self appendLoginViewController];
}

- (void)appendLoginViewController
{
    [[[[self applicationDelegate] rootContainerViewController] view] addSubview:[[self loginViewController] view]];
}

- (void)goToDashboardState
{
    [SPRStatechart goToState:[[SPRDashboardState alloc] init]];
}

- (void)exitState
{
    
}

@end
