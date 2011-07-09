#import "Entity.h"


@implementation Entity

@synthesize em;

@synthesize eid;

-(void) add:(Component*) newComponent
{
	[em addComponent:newComponent toEntity:eid];
}

-(Component*) v:(ComponentType) componentType
{
	return [em getComponent:componentType forEntity:eid];
}

@end