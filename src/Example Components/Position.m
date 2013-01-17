#import "Position.h"


@implementation Position

@synthesize x, y;

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
	self.type = ComponentTypePosition;
}

@end