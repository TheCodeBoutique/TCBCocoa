//
//  SPRStatechart.h
//  sprintly
//
//  Created by Chad Eubanks on 7/22/14.
//  Copyright (c) 2014 The Code Boutique. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TCBState.h"

@interface TCBStatechart : NSObject

+ (void)goToState:(TCBState *)state;

+ (TCBState *) currentState;
+ (void)setCurrentState: (TCBState *)state;

@end
