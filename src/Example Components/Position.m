#import "Position.h"


@implementation Position

@synthesize x = _x, y = _y;

- (id)initWithX:(float) x andY:(float) y {
    self = [super init];
    if (self) {
        self.type = ComponentTypePosition;
		self.x = x;
		self.y = y;
    }
    return self;
}

- (id)init {
	self = [super init];
	if (self) {
		self.type = ComponentTypePosition;
		self.x = 0;
		self.y = 0;
	}
	return self;
}

@end