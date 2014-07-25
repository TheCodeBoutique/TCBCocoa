//
//  SPRAppDelegate.h
//  sprintly
//
//  Created by Chad Eubanks on 7/22/14.
//  Copyright (c) 2014 The Code Boutique. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SPRRootContainerViewController.h"

@interface SPRAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic, strong) SPRRootContainerViewController *rootContainerViewController;

@end
