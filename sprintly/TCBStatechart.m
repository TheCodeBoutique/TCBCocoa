//
//  SPRStatechart.m
//  sprintly
//
//  Created by Chad Eubanks on 7/22/14.
//  Copyright (c) 2014 The Code Boutique. All rights reserved.
//

#import "TCBStatechart.h"

@implementation TCBStatechart

static TCBState *currentState;

+ (TCBState *) currentState
{
    @synchronized
    
    (self) {
        return currentState;
    }
}

+ (void)setCurrentState: (TCBState *)state
{
    @synchronized
    
    (self) {
        currentState = state;
    }
}

+ (void)goToState:(TCBState *)state
{
    // if we have a current state... call its exit method
    if (currentState) {
        [currentState exitState];
    }
    
    // update out currentState to the state we are going to
    [TCBStatechart setCurrentState:state];
    
    NSLog([NSString stringWithFormat:@"%@%@", @"Entering state: ", [TCBStatechart currentState]]);    
    
    // enter our new state
    [state enterState];
}

@end