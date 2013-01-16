#import "System.h"

/**
 * Standard design: c.f. http://entity-systems.wikidot.com/rdbms-with-code-in-systems
 */

@implementation System

@synthesize allEntities;

- (id)init
{
	self = [super init];
	if (self) {
		[self initialize];
	}
	return self;
}

-(void) initialize
{
	self.allEntities = [NSMutableArray array];
}

-(void) addEntity:(uint) eid
{
	[self.allEntities addObject:[NSNumber numberWithUnsignedInt:eid]];
}

-(void) removeEntity:(uint) e
{
	[self.allEntities removeObject:[NSNumber numberWithUnsignedInt:e]];
}

@end
