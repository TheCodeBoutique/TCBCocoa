//
//  SPRLoginState.h
//  sprintly
//
//  Created by Chad Eubanks on 7/22/14.
//  Copyright (c) 2014 The Code Boutique. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TCBState.h"
#import "SPRAppDelegate.h"
#import "SPRLoginViewController.h"
#import "SPRRootContainerViewController.h"

@interface SPRLoginState : TCBState

@property (nonatomic, strong) SPRAppDelegate *applicationDelegate;
@property (nonatomic, strong) SPRLoginViewController *loginViewController;

@end
