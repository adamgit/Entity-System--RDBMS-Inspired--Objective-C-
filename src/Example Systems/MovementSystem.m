//
//  MovementSystem.m
//  PortPortProot
//
//  Created by Patrick McKenna on 13-01-16.
//  Copyright (c) 2013 Patrick McKenna. All rights reserved.
//

#import "MovementSystem.h"

#import "Position.h"

@implementation MovementSystem

-(void) processOneGameTick {
    for (NSNumber* eidNumber in super.allEntities) {
        uint eid = [eidNumber unsignedIntValue];
        
        Position* position = (Position*)[self.em getComponent: ComponentTypePosition forEntity: eid];

        NSLog(@"Processing entity %u; Position: %f, %f", eid, position.x, position.y);
    }
}

@end
