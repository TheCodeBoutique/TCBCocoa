//
//  SPRDashboardView.m
//  sprintly
//
//  Created by Chad Eubanks on 7/24/14.
//  Copyright (c) 2014 The Code Boutique. All rights reserved.
//

#import "SPRDashboardView.h"

@implementation SPRDashboardView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
    // set any NSColor for filling, say white:
    [[NSColor purpleColor] setFill];
    NSRectFill(dirtyRect);
    [super drawRect:dirtyRect];
}

@end
