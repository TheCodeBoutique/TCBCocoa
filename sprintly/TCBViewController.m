//
//  TCBViewController.m
//  sprintly
//
//  Created by Chad Eubanks on 7/24/14.
//  Copyright (c) 2014 The Code Boutique. All rights reserved.
//

#import "TCBViewController.h"

@interface TCBViewController ()

@end

@implementation TCBViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (id)initWithViewName:(NSView *)view
{
    if (self) {
        [self setView:view];
    }
    return self;
}

@end
