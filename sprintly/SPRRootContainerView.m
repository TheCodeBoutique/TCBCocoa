//
//  SPRRootContainerView.m
//  sprintly
//
//  Created by Chad Eubanks on 7/23/14.
//  Copyright (c) 2014 The Code Boutique. All rights reserved.
//

#import "SPRRootContainerView.h"

@implementation SPRRootContainerView

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
    [[NSColor blueColor] setFill];
    NSRectFill(dirtyRect);
    [super drawRect:dirtyRect];
}


@end
